import sys
import os
import csv
import numpy as np
import Sofa.Core

# ── Force stepping parameters ────────────────────────────────────────────
FORCE_INCREMENT = 0.005
ARROW_REDUCTION = 1

CONVERGENCE_THRESHOLD = 1e-11
WARMUP_STEPS = 1


NUM_POINTS = 7         
ARCH_RADIUS = 0.6
SUBTENDED_ANGLE_DEG =60  #215.0


def generate_arch(num_points, R, subtended_angle_deg):
    """
    Circular arch of radius R in the XY plane, subtended angle
    `subtended_angle_deg`, centered on the arc's own circle center at the
    origin. The apex (crown, theta = 0) sits at the top, (0, R, 0). The
    two ends sit symmetrically at +/- alpha, where alpha = subtended_angle/2.
    For subtended_angle > 180 deg the ends curl back in past horizontal,
    matching the DaDeppo-Schmidt geometry (Fig. 5 of Leahu-Aluas &
    Abed-Meraim, 2011).

    Curvature axis is Z, so the beam bends in the XY plane (perpendicular
    load will be along Y).

    Returns:
        positions : (N,3) node positions
        quats     : (N,4) quaternions [qx,qy,qz,qw], local X-axis tangent
                    to the arc, local Z-axis fixed along global Z.
    """
    alpha = np.radians(subtended_angle_deg) / 2.0
    thetas = np.linspace(-alpha, alpha, num_points)

    xs = R * np.sin(thetas)
    ys = R * np.cos(thetas)
    zs = np.zeros_like(xs)
    positions = np.stack([xs, ys, zs], axis=1)

    # Tangent direction dPos/dtheta, normalized
    dx = R * np.cos(thetas)
    dy = -R * np.sin(thetas)
    tangents = np.stack([dx, dy, np.zeros_like(dx)], axis=1)
    tangents /= np.linalg.norm(tangents, axis=1, keepdims=True)

    quats = np.zeros((num_points, 4))
    Zaxis = np.array([0.0, 0.0, 1.0])
    for i, X in enumerate(tangents):
        Y = np.cross(Zaxis, X)
        Y /= np.linalg.norm(Y)
        Z = np.cross(X, Y)
        Rmat = np.column_stack([X, Y, Z])
        quats[i] = _rotmat_to_quat(Rmat)

    return positions, quats


def _rotmat_to_quat(R):
    """3x3 rotation matrix (columns = local X,Y,Z in world frame) -> [qx,qy,qz,qw]."""
    m00, m01, m02 = R[0]
    m10, m11, m12 = R[1]
    m20, m21, m22 = R[2]
    trace = m00 + m11 + m22

    if trace > 0:
        S = np.sqrt(trace + 1.0) * 2
        qw = 0.25 * S
        qx = (m21 - m12) / S
        qy = (m02 - m20) / S
        qz = (m10 - m01) / S
    elif (m00 > m11) and (m00 > m22):
        S = np.sqrt(1.0 + m00 - m11 - m22) * 2
        qw = (m21 - m12) / S
        qx = 0.25 * S
        qy = (m01 + m10) / S
        qz = (m02 + m20) / S
    elif m11 > m22:
        S = np.sqrt(1.0 + m11 - m00 - m22) * 2
        qw = (m02 - m20) / S
        qx = (m01 + m10) / S
        qy = 0.25 * S
        qz = (m12 + m21) / S
    else:
        S = np.sqrt(1.0 + m22 - m00 - m11) * 2
        qw = (m10 - m01) / S
        qx = (m02 + m20) / S
        qy = (m12 + m21) / S
        qz = 0.25 * S

    return [qx, qy, qz, qw]


class MyController(Sofa.Core.Controller):
    def __init__(self, *args, **kwargs):
        Sofa.Core.Controller.__init__(self, *args, **kwargs)
        print("Python::__init__::" + str(self.name))

        self.forceField = kwargs.get("forceField")
        self.forcePerturb = kwargs.get("perturb")
        self.dofs = kwargs.get("dofs")

        self.current_force = 0.0
        self.elapsed_time = 0.0

        self.start = 0
        self.index = 0
        self.previous = np.array(self.dofs.position[:], copy=True)
        self.current = None
        self.force_max = 200
        self.reach = 0

    def onAnimateBeginEvent(self, event):
        if self.start < WARMUP_STEPS:
            self.start += 1
            self.index += 1
        else:
            self.index += 1

            self.current = np.array(self.dofs.position[:], copy=True)
            diff = np.array(self.current - self.previous)
            print("#######################################")
            print(self.current_force)
            print("#######################################")

            # index 0 = hinged end, index -1 = clamped end -> both are
            # supports, exclude both from the convergence check.
            if np.max(np.abs(diff[1:-1, :3])) < CONVERGENCE_THRESHOLD:
                print("Converged")

                filename = "result.csv"
                file_exists = os.path.isfile(filename)

                with open(filename, mode="a", newline="") as file:
                    writer = csv.writer(file)
                    writer.writerow([self.index - 1, self.current_force])

                if self.current_force > self.force_max:
                    self.reach = 1
                if self.reach == 0:
                    self.current_force += FORCE_INCREMENT
                else:
                    self.current_force -= FORCE_INCREMENT

            self.previous = self.current.copy()

        # Perpendicular load at the arch's crown (apex) node, along -Y
        self.forceField.forces = [[0, -self.current_force, 0, 0, 0, 0]]

        dt = self.getContext().dt.value
        self.elapsed_time += dt

        cycle_time = 3.1
        active_time = 1.1
        current_cycle_time = self.elapsed_time % cycle_time

        if current_cycle_time < active_time:
            self.forcePerturb.forces = [[0, 0, 0, 0, 0, 0]]
        else:
            self.forcePerturb.forces = [[0, 0, 0, 0, 0, 0]]


def createScene(rootNode):

    rootNode.addObject('RequiredPlugin',
        pluginName='BeamAdapter '
                   'Sofa.Component.MechanicalLoad '
                   'Sofa.Component.Constraint.Projective '
                   'Sofa.Component.LinearSolver.Direct '
                   'Sofa.Component.ODESolver.Backward '
                   'Sofa.Component.StateContainer '
                   'Sofa.Component.Topology.Container.Dynamic '
                   'Sofa.Component.Visual')

    rootNode.addObject('VisualStyle',
        displayFlags='showBehaviorModels showCollisionModels '
                     'hideBoundingCollisionModels showForceFields')
    rootNode.addObject('DefaultAnimationLoop')
    rootNode.addObject('DefaultVisualManagerLoop')
    rootNode.gravity = [0, 0, 0]

    # ── Beam model ─────────────────────────────────────────────────────────
    BeamModel = rootNode.addChild('BeamModel', bbox="-0.4 -0.1 -0.1 0.4 0.4 0.1")
    BeamModel.addObject('EulerImplicitSolver', firstOrder="1",
        rayleighStiffness='0.5', rayleighMass='0.5', printLog='false')

    BeamModel.addObject('SparseLDLSolver', name='LinearSolver', template='CompressedRowSparseMatrixd')

    # Compute the 215-deg circular arch geometry (positions + tangent-aligned
    # orientations), matching the DaDeppo-Schmidt / Leahu-Aluas benchmark.
    positions, quats = generate_arch(NUM_POINTS, ARCH_RADIUS, SUBTENDED_ANGLE_DEG)
    edges = [[i, i + 1] for i in range(NUM_POINTS - 1)]
    full_dofs = np.hstack([positions, quats]).tolist()  # [x,y,z,qx,qy,qz,qw] per node

    BeamModel.addObject('EdgeSetTopologyContainer',
        name='MeshLines', position=positions.tolist(), edges=edges)

    dofs = BeamModel.addObject('MechanicalObject',
        template='Rigid3d', name='DOFs', position=full_dofs)


    last = NUM_POINTS - 1
    BeamModel.addObject('PartialFixedProjectiveConstraint',
        name='HingedEnd',
        indices=[0],
        fixedDirections=[1, 1, 1, 1, 1, 1])
    BeamModel.addObject('PartialFixedProjectiveConstraint',
        name='ClampedEnd',
        indices=[last],
        fixedDirections=[1, 1, 1, 1, 1, 1])
    #radius="0.01
    BeamModel.addObject('BeamInterpolation',
        name='BeamInterpolation',crossSectionShape="rectangular",lengthY='0.01',lengthZ='0.03', defaultYoungModulus="10000000",
        dofsAndBeamsAligned='0')

    BeamModel.addObject('AdaptiveBeamForceFieldAndMass',
        name='BeamForceField',
        massDensity='1',
        rayleighStiffness='0.04',
        rayleighMass='0.04')

    # Incrementing perpendicular load at the arch's crown (apex) node
    mid = NUM_POINTS // 2
    forceField = BeamModel.addObject('ConstantForceField',
        name='ConstantForceField1',
        indices=[mid],
        forces=[[0, 0, 0, 0, 0, 0]],
        showArrowSize='0.1')

    # perturbation (kept near one end, unchanged in purpose)
    forceField2 = BeamModel.addObject('ConstantForceField',
        name='ConstantForceField2',
        indices='1',
        forces=[[0, 0, 0, 0, 0, 0]],
        showArrowSize='0.5')

    controller = MyController(name="MyC", forceField=forceField, perturb=forceField2, dofs=dofs)
    rootNode.addObject(controller)

    return rootNode


def main():
    import SofaRuntime
    import Sofa.Gui

    root = Sofa.Core.Node('root')
    createScene(root)
    Sofa.Simulation.init(root)

    Sofa.Gui.GUIManager.Init('myscene', 'qglviewer')
    Sofa.Gui.GUIManager.createGUI(root, __file__)
    Sofa.Gui.GUIManager.SetDimension(1080, 1080)
    Sofa.Gui.GUIManager.MainLoop(root)
    Sofa.Gui.GUIManager.closeGUI()


if __name__ == '__main__':
    main()