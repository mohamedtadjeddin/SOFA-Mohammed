import sys
import Sofa.Core

# Step increment for the axial force (N per step)
FORCE_INCREMENT = 0.01
ARROW_REDUCTION=1
class MyController(Sofa.Core.Controller):
    def __init__(self, *args, **kwargs):
        Sofa.Core.Controller.__init__(self, *args, **kwargs)
        print("Python::__init__::" + str(self.name))

        # We store a reference to the ConstantForceField object,
        # passed in as a keyword argument when the controller is created.
        self.forceField = kwargs.get("forceField")
        self.forcePerturb=kwargs.get("perturb")

        # Internal counter: current axial force magnitude (X direction = axial)
        self.current_force = 0.0
        self.perturb=0.0
        self.elapsed_time = 0.0
        self.jump=0
    def onAnimateBeginEvent(self, event):
        # 1. Increment the force
        if self.jump==2:
            self.current_force += FORCE_INCREMENT
            self.forceField.forces = [[-self.current_force, 0, 0, 0, 0, 0]]
            self.jump=0
        else:
            self.jump+=1
            self.forceField.forces = [[0, 0, 0, 0,0, 0]]
        print(self.current_force)
        dt = self.getContext().dt.value
        self.elapsed_time += dt

        cycle_time = 3.1      # total cycle duration
        active_time = 1.1     # force active duration

        current_cycle_time = self.elapsed_time % cycle_time

        if current_cycle_time < active_time:

            # ACTIVE during 
            self.forcePerturb.forces = [[0, 0, 0, 0, 0, 0]]

        else:

            # OFF during 0
            self.forcePerturb.forces = [[0, 0, 0, 0, 0, 0]]
        # DO SOMETHING HERE
        # -----------------
        # example:
        # self.current_force += 10

        # Reset timer
        

        # 2. Write it directly into SOFA's data field.
        #    'forces' in ConstantForceField is a list of 6-DOF vectors,
        #    one per index listed in 'indices'.
        #    Here we have only one index (node 9), so forces = [[Fx, Fy, Fz, Tx, Ty, Tz]]
        #    Axial direction of the beam is X, so Fx = current_force.
        
        



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
    rootNode.gravity = [0, 0, -0.1]

    # ── Beam model ─────────────────────────────────────────────────────────
    BeamModel = rootNode.addChild('BeamModel', bbox="-0.1 -0.3 -0.1 0.1 0.1 0.1")
    BeamModel.addObject('EulerImplicitSolver',
        rayleighStiffness='0', rayleighMass='0', printLog='false')

    BeamModel.addObject('SparseLDLSolver',name='LinearSolver',template='CompressedRowSparseMatrixd')

    BeamModel.addObject('RegularGridTopology',
        name='MeshLines', n=[50, 1, 1], min=[0, 0, 0], max=[0.5, 0, 0])

    BeamModel.addObject('MechanicalObject',
        template='Rigid3d', name='DOFs', position='@MeshLines.positions')

    # Fix node 0 → cantilever boundary condition
    BeamModel.addObject('PartialFixedProjectiveConstraint',
    name='PinnedConstraint1',
    indices='0',
    fixedDirections=[1, 1, 1, 1, 1, 1]) 

  

  

   


    BeamModel.addObject('BeamInterpolation',
        name='BeamInterpolation',radius="0.05",defaultYoungModulus="100000")

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
        indices='49',
        forces=[[0, 0, 0, 0, 0, 0]],   # <-- initial value, list of lists
        showArrowSize='0.001')
    
    # perturbation
    forceField2 = BeamModel.addObject('ConstantForceField',
        name='ConstantForceField2',
        indices='1',
        forces=[[0, 0, 0, 0, 0, 0]],   # <-- initial value, list of lists
        showArrowSize='0.5')

    # ── Controller — pass the forceField reference so it can update it ─────
    controller = MyController(name="MyC", forceField=forceField , perturb=forceField2)
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