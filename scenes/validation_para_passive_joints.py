import Sofa
from math import sin, cos
import numpy as np
import csv
import os

path = os.path.dirname(os.path.abspath(__file__)) + '/mesh/'

X_INCREMENT = 0.001
Y_INCREMENT = 0.002
Z_INCREMENT = 0.001
X_MAX = 0.60
Y_MAX = 0.3
Z_MAX = 1

# --- Mesh resolution: change this to change the number of beam elements per leg ---
N_ELEMENTS = 50

# --- Geometry: bases of the two legs and the shared tip they converge to ---
BASE_01 = np.array([0.0,  0.2, 0.0])
BASE_02 = np.array([0.0, -0.2, 0.0])
TIP_POSITION = np.array([0.98, 0.0, 0.0])


def quat_from_vectors(a, b):
    """
    Returns the SOFA-format quaternion [x, y, z, w] that rotates unit vector a
    onto unit vector b. Used to align each leg's local beam frame (default +x)
    with the actual base->tip direction of that leg.
    """
    a = np.array(a, dtype=float)
    b = np.array(b, dtype=float)
    a = a / np.linalg.norm(a)
    b = b / np.linalg.norm(b)

    dot = np.clip(np.dot(a, b), -1.0, 1.0)
    axis = np.cross(a, b)
    axis_norm = np.linalg.norm(axis)

    if axis_norm < 1e-8:
        if dot > 0:
            # a and b already aligned
            return [0.0, 0.0, 0.0, 1.0]
        else:
            # a and b opposite: rotate 180 degrees about any perpendicular axis
            perp = np.array([0.0, 1.0, 0.0]) if abs(a[0]) > 0.9 else np.array([1.0, 0.0, 0.0])
            axis = np.cross(a, perp)
            axis = axis / np.linalg.norm(axis)
            return [axis[0], axis[1], axis[2], 0.0]

    axis = axis / axis_norm
    angle = np.arccos(dot)
    s = np.sin(angle / 2.0)
    return [axis[0] * s, axis[1] * s, axis[2] * s, np.cos(angle / 2.0)]


class MyController(Sofa.Core.Controller):
    def __init__(self, *args, **kwargs):
        Sofa.Core.Controller.__init__(self, *args, **kwargs)
        print("Python::__init__::" + str(self.name))

        # We store a reference to the ConstantForceField object,
        # passed in as a keyword argument when the controller is created.
        self.goal_p = kwargs.get("goal_position")
        self.pos01 = kwargs.get("pos01")
        self.pos02 = kwargs.get("pos02")

        # Internal counter: current axial force magnitude (X direction = axial)
        self.current_x = kwargs.get("initial_x", 0.98)
        self.current_y = kwargs.get("initial_y", 0.0)
        self.current_z = 0.0
        self.start = 0
        self.direction = 0
        self.previous = np.array(self.pos02.position[:], copy=True)
        self.current = 0
        self.index = 0

    def onAnimateBeginEvent(self, event):
        if self.start < 50:
            self.start += 1
            self.index += 1
        else:
            self.index += 1

            self.current = np.array(self.pos02.position[:], copy=True)
            diff = np.array(self.current - self.previous)
            print("#######################################")
            print(np.array2string(
                diff[1:, :2],
                precision=30,
                suppress_small=False
            ))
            print("#######################################")

            if np.max(np.abs(diff[1:, :2])) < 1e-5:
                print("Converged")

                filename = "result.csv"

                # check if file exists
                file_exists = os.path.isfile(filename)

                with open(filename, mode="a", newline="") as file:
                    writer = csv.writer(file)

                    # write your number (example: current_x)
                    writer.writerow([self.index - 1])
                    if self.current_y < Y_MAX:
                        self.current_y += Y_INCREMENT

                    if self.current_x > X_MAX:
                        self.current_x -= X_INCREMENT

            self.previous = self.current.copy()

        self.goal_p.position = [[self.current_x, self.current_y, 0, 0, 0, 0]]


def leg_construct(rootNode, base_point, tip_point, n_elements=4):
    """
    Builds one beam leg as a straight line from base_point to tip_point.
    Two legs sharing the same tip_point will be geometrically coincident
    at the tip from the very first frame (no initial spring snap).

    base_point, tip_point: 3-element iterables (x, y, z)
    n_elements: number of beam segments (mesh resolution)
    """
    base_point = np.array(base_point, dtype=float)
    tip_point = np.array(tip_point, dtype=float)

    n_points = n_elements + 1
    xs = np.linspace(base_point[0], tip_point[0], n_points)
    ys = np.linspace(base_point[1], tip_point[1], n_points)
    zs = np.linspace(base_point[2], tip_point[2], n_points)

    points_3d = [[xs[i], ys[i], zs[i]] for i in range(n_points)]

    # Orientation: align the local beam x-axis with the actual base->tip direction
    direction = tip_point - base_point
    quat = quat_from_vectors([1.0, 0.0, 0.0], direction)
    points_rigid = [[xs[i], ys[i], zs[i]] + quat for i in range(n_points)]

    lines = [[i, i + 1] for i in range(n_points - 1)]
    tip_index = n_points - 1

    ##########################################
    # Beam Model                             #
    ##########################################
    model = rootNode.addChild('model', bbox="-0.01 -0.01 -0.01 0.01 0.01 0.01")
    model.addObject('EulerImplicitSolver', rayleighStiffness=0.8, rayleighMass=0.8,firstOrder="1")
    model.addObject('SparseLDLSolver', template="CompressedRowSparseMatrixMat3x3d")
    model.addObject('GenericConstraintCorrection')
    model.addObject('MeshTopology', position=points_3d, lines=lines)

    pos = model.addObject('MechanicalObject', template='Rigid3', name='dofs',
                           position=points_rigid,
                           showObject=True, drawMode=0, showObjectScale=0.01)

    model.addObject('BeamInterpolation', dofsAndBeamsAligned=True, straight=True,
                     defaultYoungModulus=210000000000, radius=0.001)
    model.addObject('AdaptiveBeamForceFieldAndMass', computeMass=True, massDensity=0.000001)
    # Unfortunately, the component SlidingActuator needs to be used with a PartialFixedProjectiveConstraint.
    # Ex: if SlidingActuator simulates a single dof (e.g. translation along x),
    # the other dofs must be fixed using this component
    model.addObject('PartialFixedProjectiveConstraint', indices=0, fixedDirections=[1, 1, 1, 1, 1, 0])
    model.addObject('RestShapeSpringsForceField', points=0, angularStiffness=50, stiffness=10000)
    forceField = model.addObject('ConstantForceField',
        name='ConstantForceField1',
        indices=str(tip_index),
        forces=[[0, 0, 0, 0, 0, 0]],
        showArrowSize='0.01')

    return model, pos, tip_index


def createScene(rootNode):
    rootNode.dt = 0.01
    rootNode.addObject('RequiredPlugin', name='SofaPython3')
    rootNode.addObject('RequiredPlugin', name='BeamAdapter')
    rootNode.addObject('RequiredPlugin', name='SoftRobots')
    rootNode.addObject('RequiredPlugin', name='SoftRobots.Inverse')
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.AnimationLoop')  # Needed to use components [FreeMotionAnimationLoop]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.Constraint.Lagrangian.Correction')  # Needed to use components [GenericConstraintCorrection,UncoupledConstraintCorrection]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.Constraint.Projective')  # Needed to use components [PartialFixedProjectiveConstraint]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.LinearSolver.Direct')  # Needed to use components [SparseLDLSolver]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.LinearSolver.Iterative')  # Needed to use components [CGLinearSolver]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.Mapping.NonLinear')  # Needed to use components [RigidMapping]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.ODESolver.Backward')  # Needed to use components [EulerImplicitSolver]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.SolidMechanics.Spring')  # Needed to use components [RestShapeSpringsForceField]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.StateContainer')  # Needed to use components [MechanicalObject]
    rootNode.addObject('RequiredPlugin',
                   name='Sofa.Component.Topology.Container.Constant')  # Needed to use components [MeshTopology]
    rootNode.addObject('RequiredPlugin', name='Sofa.Component.Visual')  # Needed to use components [VisualStyle]
    rootNode.addObject('VisualStyle', displayFlags='showVisualModels showBehaviorModels showCollisionModels '
                                                   'showForceFields showInteractionForceFields')

    rootNode.addObject('FreeMotionAnimationLoop')
    rootNode.addObject('QPInverseProblemSolver', epsilon=0.001, printLog=False, tolerance=1e-10, maxIterations=1000)

    #########################################

    results01 = leg_construct(rootNode, BASE_01, TIP_POSITION, n_elements=N_ELEMENTS)
    results02 = leg_construct(rootNode, BASE_02, TIP_POSITION, n_elements=N_ELEMENTS)

    beam01, dofs01, tip01 = results01
    beam02, dofs02, tip02 = results02

    ee = rootNode.addChild('EndEffector')

    tip = ee.addObject('MechanicalObject',
                template='Rigid3',
                name='dofs',
                position=[[TIP_POSITION[0], TIP_POSITION[1], TIP_POSITION[2], 0, 0, 0, 1]])

    beam01.addObject(
        'RestShapeSpringsForceField',
        points=[tip01],
        external_rest_shape=ee.dofs.getLinkPath(),
        stiffness=1e6,
        angularStiffness=1
    )

    beam02.addObject(
        'RestShapeSpringsForceField',
        points=[tip02],
        external_rest_shape=ee.dofs.getLinkPath(),
        stiffness=1e6,
        angularStiffness=1
    )

    controller = MyController(name="MyC", goal_position=tip, pos01=dofs01, pos02=dofs02,
                               initial_x=TIP_POSITION[0], initial_y=TIP_POSITION[1])
    rootNode.addObject(controller)

    return rootNode