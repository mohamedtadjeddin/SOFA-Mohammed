import sys
import os
import csv
import numpy as np
import Sofa.Core

# Step increment for the axial force (N per step), applied once the beam
# has converged (settled) under the current force level.
FORCE_INCREMENT = 0.1
ARROW_REDUCTION = 1


# Same convergence idea as snap.py: after a warmup period, compare the
# body's position at this step vs the previous step; once the max change
# drops below this threshold, consider the beam settled at this force level.
CONVERGENCE_THRESHOLD = 1e-5
WARMUP_STEPS = 1


class MyController(Sofa.Core.Controller):
    def __init__(self, *args, **kwargs):
        Sofa.Core.Controller.__init__(self, *args, **kwargs)
        print("Python::__init__::" + str(self.name))

        # We store a reference to the ConstantForceField object,
        # passed in as a keyword argument when the controller is created.
        self.forceField = kwargs.get("forceField")
        self.forcePerturb = kwargs.get("perturb")
        # MechanicalObject whose position we monitor for convergence
        self.dofs = kwargs.get("dofs")

        # Internal counter: current axial force magnitude (X direction = axial)
        self.current_force = 0.0
        self.elapsed_time = 0.0

        # Convergence bookkeeping (mirrors snap.py's MyController)
        self.start = 0
        self.index = 0
        self.previous = np.array(self.dofs.position[:], copy=True)
        self.current = None
        self.force_max=50
        self.reach=0
    def onAnimateBeginEvent(self, event):
        # 1. Let the simulation warm up before checking convergence,
        #    exactly like snap.py's self.start<50 guard.
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

            if np.max(np.abs(diff[1:, :3])) < CONVERGENCE_THRESHOLD:
                filename = "result.csv"
                file_exists = os.path.isfile(filename)

                with open(filename, mode="a", newline="") as file:
                    writer = csv.writer(file)
                    writer.writerow([self.index - 1, self.current_force])

                # only step the force once the beam has actually settled
                if self.current_force>self.force_max:
                    self.reach=1
                if self.reach==0:
                 self.current_force += FORCE_INCREMENT
                else:
                    self.current_force -= FORCE_INCREMENT

            self.previous = self.current.copy()

        # 2. Write the (possibly just-updated) force directly into SOFA's data field.
        #    'forces' in ConstantForceField is a list of 6-DOF vectors,
        #    one per index listed in 'indices'.
        #    Axial direction of the beam is X, so Fx = -current_force (compression).
        self.forceField.forces = [[-self.current_force, 0, 0, 0, 0, 0]]

        dt = self.getContext().dt.value
        self.elapsed_time += dt

        cycle_time = 3.1      # total cycle duration
        active_time = 1.1     # force active duration

        current_cycle_time = self.elapsed_time % cycle_time

        if current_cycle_time < active_time:
            # ACTIVE during
            self.forcePerturb.forces = [[0, 0, 0, 0, 0, 0]]
        else:
            # OFF during
            self.forcePerturb.forces = [[0, 0, 0, 0, 0, 0]]


def createScene(rootNode):

    rootNode.addObject('RequiredPlugin',
        pluginName='BeamAdapter '
                   'Sofa.Component.MechanicalLoad '
                   'Sofa.Component.Constraint.Projective '
                   'Sofa.Component.LinearSolver.Direct '
                   'Sofa.Component.ODESolver.Backward '
                   'Sofa.Component.StateContainer '
                   'Sofa.Component.Topology.Container.Constant '
                   'Sofa.Component.Topology.Container.Grid '
                   'Sofa.Component.Visual')

    rootNode.addObject('VisualStyle',
        displayFlags='showBehaviorModels showCollisionModels '
                     'hideBoundingCollisionModels showForceFields')
    rootNode.addObject('DefaultAnimationLoop')
    rootNode.addObject('DefaultVisualManagerLoop')
    rootNode.gravity = [0, 0, 0]

    # ── Beam model ─────────────────────────────────────────────────────────
    BeamModel = rootNode.addChild('BeamModel', bbox="-0.1 -0.3 -0.1 0.1 0.1 0.1")
    BeamModel.addObject('EulerImplicitSolver', firstOrder="1",
        rayleighStiffness='0', rayleighMass='0', printLog='false')

    BeamModel.addObject('SparseLDLSolver', name='LinearSolver', template='CompressedRowSparseMatrixd')

    BeamModel.addObject('RegularGridTopology',
        name='MeshLines', n=[30, 1, 1], min=[0, 0, 0], max=[0.5, 0, 0])

    dofs = BeamModel.addObject('MechanicalObject',
        template='Rigid3d', name='DOFs', position='@MeshLines.positions')

    # Fix node 0 → cantilever boundary condition
    BeamModel.addObject('PartialFixedProjectiveConstraint',
        name='PinnedConstraint1',
        indices='0',
        fixedDirections=[1, 1, 1, 1, 1, 1])
    

    BeamModel.addObject('BeamInterpolation',
        name='BeamInterpolation', radius="0.05", defaultYoungModulus="100000")

    BeamModel.addObject('AdaptiveBeamForceFieldAndMass',
        name='BeamForceField',
        massDensity='1',
        rayleighStiffness='0.04',
        rayleighMass='0.04')

    # ConstantForceField — initial force is zero, will be updated each step
    # indices='9' means we apply the force at the tip node (last node)
    # forces is a list of one 6D vector [Fx, Fy, Fz, Tx, Ty, Tz]
    forceField = BeamModel.addObject('ConstantForceField',
        name='ConstantForceField1',
        indices='29',
        forces=[[0, 0, 0, 0, 0, 0]],   # <-- initial value, list of lists
        showArrowSize='0.001')

    # perturbation
    forceField2 = BeamModel.addObject('ConstantForceField',
        name='ConstantForceField2',
        indices='1',
        forces=[[0, 0, 0, 0, 0, 0]],   # <-- initial value, list of lists
        showArrowSize='0.5')

    # ── Controller — pass the forceField and DOFs references so it can update
    #    the force and check convergence each step ─────────────────────────
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