import Sofa
from math import sin, cos, atan2
import numpy as np
import csv
import os


# ============================================================
# Parameters
# ============================================================

QA1_INCREMENT = 0.005
QA2_INCREMENT = -0.005

QA1_MAX = 40.0
QA2_MAX = -40.0

N_ELEMENTS = 50


# ============================================================
# Geometry
# ============================================================

BASE_01 = np.array([0.0,  0.2, 0.0])
BASE_02 = np.array([0.0, -0.2, 0.0])

# Only used as the INITIAL tip position.
# It is NOT constrained during the simulation.
TIP_POSITION = np.array([0.98, 0.0, 0.0])


# ============================================================
# Base stiffness
# ============================================================

BASE_LINEAR_STIFFNESS = 1e8
BASE_ANGULAR_STIFFNESS = 1


# ============================================================
# Quaternion utilities
# ============================================================

def quat_from_vectors(a, b):

    a = np.array(a, dtype=float)
    b = np.array(b, dtype=float)

    a = a / np.linalg.norm(a)
    b = b / np.linalg.norm(b)

    dot = np.clip(np.dot(a, b), -1.0, 1.0)

    axis = np.cross(a, b)
    axis_norm = np.linalg.norm(axis)

    if axis_norm < 1e-8:

        if dot > 0:
            return [0.0, 0.0, 0.0, 1.0]

        else:
            perp = (
                np.array([0.0, 1.0, 0.0])
                if abs(a[0]) > 0.9
                else np.array([1.0, 0.0, 0.0])
            )

            axis = np.cross(a, perp)
            axis = axis / np.linalg.norm(axis)

            return [axis[0], axis[1], axis[2], 0.0]

    axis = axis / axis_norm

    angle = np.arccos(dot)

    s = np.sin(angle / 2.0)

    return [
        axis[0] * s,
        axis[1] * s,
        axis[2] * s,
        np.cos(angle / 2.0)
    ]


def quat_from_angle_z(theta):

    return [
        0.0,
        0.0,
        sin(theta / 2.0),
        cos(theta / 2.0)
    ]


# ============================================================
# Controller
# ============================================================

class MyController(Sofa.Core.Controller):

    def __init__(self, *args, **kwargs):

        Sofa.Core.Controller.__init__(self, *args, **kwargs)

        print("Python::__init__::" + str(self.name))

        self.motor01 = kwargs.get("motor01")
        self.motor02 = kwargs.get("motor02")

        self.theta01 = kwargs.get("theta01")
        self.theta02 = kwargs.get("theta02")

        self.base01 = kwargs.get("base01")
        self.base02 = kwargs.get("base02")

        self.pos01 = kwargs.get("pos01")
        self.pos02 = kwargs.get("pos02")

        self.qa1 = kwargs.get("initial_qa1", 0.0)
        self.qa2 = kwargs.get("initial_qa2", 0.0)
        self.tip01 = kwargs.get("tip01")
        self.start = 0
        self.index = 0

        self.previous = np.array(
            self.pos02.position[:],
            copy=True
        )

        self.current = None

        self._apply_motor_targets()


    # --------------------------------------------------------
    # Apply motor rotations
    # --------------------------------------------------------

    def _apply_motor_targets(self):

        q1 = quat_from_angle_z(
            self.theta01 + self.qa1
        )

        q2 = quat_from_angle_z(
            self.theta02 + self.qa2
        )

        self.motor01.position = [
            list(self.base01) + q1
        ]

        self.motor02.position = [
            list(self.base02) + q2
        ]


    # --------------------------------------------------------
    # Animation
    # --------------------------------------------------------

    def onAnimateBeginEvent(self, event):

        if self.start < 50:

            self.start += 1
            self.index += 1

        else:

            self.index += 1

            self.current = np.array(
                self.pos02.position[:],
                copy=True
            )

            diff = np.array(
                self.current - self.previous
            )

            print("#######################################")

            print(
                np.array2string(
                    diff[1:, :2],
                    precision=30,
                    suppress_small=False
                )
            )

            print("#######################################")

            if np.max(np.abs(diff[1:, :2])) < 1e-5:

                print(
                    "Converged, qa1=%f qa2=%f"
                    % (self.qa1, self.qa2)
                )

                filename = "result.csv"

                file_exists = os.path.isfile(filename)

                with open(
                    filename,
                    mode="a",
                    newline=""
                ) as file:

                    writer = csv.writer(file)

                    writer.writerow(
                        [
                            self.index - 1,
                            
                            
                        ]
                    
                    )
                tip_y = self.pos01.position[self.tip01][0]

                with open("tip_y.csv", mode="a", newline="") as file:

                    writer = csv.writer(file)

                    writer.writerow([
                        tip_y
                ])
                # ------------------------------------------------
                # Increment motor positions
                # ------------------------------------------------

                if self.qa1 < QA1_MAX:

                    self.qa1 += QA1_INCREMENT

                if self.qa2 > QA2_MAX:

                    self.qa2 += QA2_INCREMENT

                self._apply_motor_targets()

            self.previous = self.current.copy()


# ============================================================
# Construct one beam leg
# ============================================================

def leg_construct(
    rootNode,
    base_point,
    tip_point,
    n_elements=4,
    leg_name='leg'
):

    base_point = np.array(
        base_point,
        dtype=float
    )

    tip_point = np.array(
        tip_point,
        dtype=float
    )

    n_points = n_elements + 1

    xs = np.linspace(
        base_point[0],
        tip_point[0],
        n_points
    )

    ys = np.linspace(
        base_point[1],
        tip_point[1],
        n_points
    )

    zs = np.linspace(
        base_point[2],
        tip_point[2],
        n_points
    )

    points_3d = [
        [
            xs[i],
            ys[i],
            zs[i]
        ]
        for i in range(n_points)
    ]

    # --------------------------------------------------------
    # Initial beam orientation
    # --------------------------------------------------------

    direction = tip_point - base_point

    quat = quat_from_vectors(
        [1.0, 0.0, 0.0],
        direction
    )

    points_rigid = [
        [
            xs[i],
            ys[i],
            zs[i]
        ]
        + quat
        for i in range(n_points)
    ]

    lines = [
        [i, i + 1]
        for i in range(n_points - 1)
    ]

    tip_index = n_points - 1

    theta0 = atan2(
        direction[1],
        direction[0]
    )


    # ========================================================
    # Motor
    # ========================================================

    motor = rootNode.addChild(
        leg_name + '_motor'
    )

    motor_dofs = motor.addObject(
        'MechanicalObject',
        template='Rigid3',
        name='dofs',
        position=[
            list(base_point)
            +
            quat_from_angle_z(theta0)
        ],
        showObject=True,
        showObjectScale=0.02
    )


    # ========================================================
    # Beam model
    # ========================================================

    model = rootNode.addChild(
        leg_name + '_model',
        bbox="-0.01 -0.01 -0.01 0.01 0.01 0.01"
    )

    model.addObject(
        'EulerImplicitSolver',
        rayleighStiffness=0.8,
        rayleighMass=0.8,
        firstOrder="1"
    )

    model.addObject(
        'SparseLDLSolver',
        template="CompressedRowSparseMatrixMat3x3d"
    )

    model.addObject(
        'GenericConstraintCorrection'
    )

    model.addObject(
        'MeshTopology',
        position=points_3d,
        lines=lines
    )

    pos = model.addObject(
        'MechanicalObject',
        template='Rigid3',
        name='dofs',
        position=points_rigid,
        showObject=True,
        drawMode=0,
        showObjectScale=0.01
    )

    model.addObject(
        'BeamInterpolation',
        dofsAndBeamsAligned=True,
        straight=True,
        defaultYoungModulus=210000000000,
        radius=0.001
    )

    model.addObject(
        'AdaptiveBeamForceFieldAndMass',
        computeMass=True,
        massDensity=0.000001
    )


    # ========================================================
    # BASE JOINT
    #
    # Translation = fixed
    # Rotation X   = fixed
    # Rotation Y   = fixed
    # Rotation Z   = free / actuated
    # ========================================================

    model.addObject(
        'PartialFixedProjectiveConstraint',
        indices=0,
        fixedDirections=[
            1, 1, 1,
            1, 1, 0
        ]
    )

    model.addObject(
        'RestShapeSpringsForceField',
        name='baseSpring',
        points=0,
        external_rest_shape=motor_dofs.getLinkPath(),
        stiffness=BASE_LINEAR_STIFFNESS,
        angularStiffness=BASE_ANGULAR_STIFFNESS
    )


    return (
        model,
        pos,
        tip_index,
        motor_dofs,
        theta0
    )


# ============================================================
# Create scene
# ============================================================

def createScene(rootNode):

    rootNode.dt = 0.01
    rootNode.gravity = [0, 0, 0]

    # ========================================================
    # Required plugins
    # ====================================================

    rootNode.addObject(
        'RequiredPlugin',
        name='SofaPython3'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='BeamAdapter'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.AnimationLoop'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.Constraint.Lagrangian.Solver'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.Constraint.Lagrangian.Correction'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.Constraint.Projective'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.LinearSolver.Direct'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.Mapping.NonLinear'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.ODESolver.Backward'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.SolidMechanics.Spring'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.StateContainer'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.Topology.Container.Constant'
    )

    rootNode.addObject(
        'RequiredPlugin',
        name='Sofa.Component.Visual'
    )


    # ========================================================
    # Visual
    # ========================================================

    rootNode.addObject(
        'VisualStyle',
        displayFlags=
        'showVisualModels '
        'showBehaviorModels '
        'showCollisionModels '
        'showForceFields '
        'showInteractionForceFields'
    )


    # ========================================================
    # Constraint animation loop
    # ========================================================

    rootNode.addObject(
        'FreeMotionAnimationLoop'
    )

    rootNode.addObject(
        'NNCGConstraintSolver',
        tolerance=1e-10,
        maxIterations=1000
    )


    # ========================================================
    # Create the two legs
    # ========================================================

    results01 = leg_construct(
        rootNode,
        BASE_01,
        TIP_POSITION,
        n_elements=N_ELEMENTS,
        leg_name='leg1'
    )

    results02 = leg_construct(
        rootNode,
        BASE_02,
        TIP_POSITION,
        n_elements=N_ELEMENTS,
        leg_name='leg2'
    )


    beam01, dofs01, tip01, motor01, theta01 = results01

    beam02, dofs02, tip02, motor02, theta02 = results02


    # ========================================================
    # PASSIVE COMMON TIP
    #
    # The two beam tips are constrained to have the same
    # position:
    #
    #       x_tip1 = x_tip2
    #       y_tip1 = y_tip2
    #       z_tip1 = z_tip2
    #
    # BUT the common position itself is NOT prescribed.
    #
    # Therefore the tip can freely move as the robot deforms.
    #
    # Only translation is constrained.
    # Tip rotations remain free.
    # ========================================================
   
# ========================================================
# PASSIVE REVOLUTE JOINT AT TIP
#
# Position is strongly coupled.
# Relative rotation is completely free.
# ========================================================

    rootNode.addObject(
        'BilateralLagrangianConstraint',
        template='Rigid3d',
        object1=dofs01.getLinkPath(),
        object2=dofs02.getLinkPath(),
        first_point=tip01,
        second_point=tip02,
        keepOrientationDifference=0
    )

     # ========================================================
    # Controller
    # ========================================================

    controller = MyController(
        name="MyC",

        motor01=motor01,
        motor02=motor02,

        theta01=theta01,
        theta02=theta02,

        base01=BASE_01,
        base02=BASE_02,

        pos01=dofs01,
        pos02=dofs02,

        initial_qa1=0.0,
        initial_qa2=0.0,
        tip01=tip01,
    )

    rootNode.addObject(controller)


    return rootNode