This version of sofa framework, we added some changes in the beamAdapter plugin, we added geometric stiffess matrices (AdaptiveBeamForceFieldAndMass.h and AdaptiveBeamForceFieldAndMass.inl). 
We also added some lines of code for the SpraseLDLT solver to either do an eigen decomposition to the effective stiffness matrix and save the smallest eigen value to an external csv file, 
or find the smallest value of the D matrix in the LDLt decomposition and save it to an external csv file
//////////////////////////////////////////////////////////////////////////////////////////////////

the scenes folder contains 4 scenes :
      1- arch.py : is a test where you have an arch with fixed ends and you apply a force at the very top of the arch (perpondicular), you start from F=0 and you increament step by step
      and between steps you wait for convergence
      2- SingleBeam.py : is a test of a staight beam with the possibility of having different end conditions (fixed- free or pinned-pinned or ....) and you have an axial force at one end
      increasing step by step
      3- validation_para_active_joints.py : a parallel robot with two legs, and to move the robot you control the angle of the joints at the base
      4- validation_para_passive_joints.py : a parallel robot robot with two legs, and to move the robot you change the position of the tip (drag the tip) and joints are passive

///////////////////////////////////////////////////////////////////////////////////////////////////


the code files in the build folder :
      1- plot-para.py : to draw the sensitivity of the two legs of the parallel robot with respect to either the steps or one coordinate (if you are moving in one direction)
      2- plot-single1.py : to plot the sensitivity of the beam or the arch test, in this case the plot is not log (meant for when we changed the study from sensitivity = 1/(min_sing)^2 to sensitivity = min_sing)
      3- plot-single2.py : same as before but log ((meant for the study of sensitivity = 1/(min_sing)^2
      4- calculate-arch-pcr.py : code contains the different formulas used to calculate the buckling load of an arch
