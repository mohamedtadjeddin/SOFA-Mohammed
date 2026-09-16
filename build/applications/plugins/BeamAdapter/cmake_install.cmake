 set ( CMAKE_INSTALL_PREFIX_BACK_BeamAdapter_BeamAdapter "${CMAKE_INSTALL_PREFIX}" ) 
 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/plugins/BeamAdapter" ) 
# Install script for directory: /home/defrost/sofa2/build/external_directories/fetched/BeamAdapter

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/defrost/sofa2/build/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/llvm-objdump-20")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/BeamAdapter/BeamAdapterTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/BeamAdapter/BeamAdapterTargets.cmake"
         "/home/defrost/sofa2/build/applications/plugins/BeamAdapter/CMakeFiles/Export/92f3a3219b2b2c9b27c127567e081f4f/BeamAdapterTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/BeamAdapter/BeamAdapterTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/BeamAdapter/BeamAdapterTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/BeamAdapter" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/BeamAdapter/CMakeFiles/Export/92f3a3219b2b2c9b27c127567e081f4f/BeamAdapterTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/BeamAdapter" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/BeamAdapter/CMakeFiles/Export/92f3a3219b2b2c9b27c127567e081f4f/BeamAdapterTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/BeamAdapter" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/BeamAdapter/BeamAdapterConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/BeamAdapter" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/BeamAdapterConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "resources" OR NOT CMAKE_INSTALL_COMPONENT)
  
        find_package(Git REQUIRED)
        # get the current commit sha
        execute_process(
            COMMAND ${GIT_EXECUTABLE} rev-parse HEAD
            WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter"
            OUTPUT_VARIABLE CURRENT_GIT_COMMIT
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get the branches containing current commit
        execute_process(
            COMMAND ${GIT_EXECUTABLE} branch -a --contains "${CURRENT_GIT_COMMIT}"
            WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter"
            OUTPUT_VARIABLE CURRENT_GIT_BRANCH
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get the current remotes
        execute_process(
            COMMAND ${GIT_EXECUTABLE} remote -vv
            WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter"
            OUTPUT_VARIABLE CURRENT_GIT_REMOTE
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get more info (hash, author, date, comment)
        execute_process(
            COMMAND ${GIT_EXECUTABLE} log --pretty -n 1
            WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter"
            OUTPUT_VARIABLE CURRENT_GIT_INFO
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # write all info in git-info.txt
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/git-info.txt"
            "# Git info for BeamAdapter"                              \n
                                                                    \n
            "## Current commit"                                   \n
            "## git rev-parse --abbrev-ref HEAD"                  \n
            "${CURRENT_GIT_COMMIT}"                              \n
                                                                    \n
            "## Branches containing current commit"               \n
            "## git branch -a --contains ${CURRENT_GIT_COMMIT} " \n
            "${CURRENT_GIT_BRANCH}"                              \n
                                                                    \n
            "## Remotes"                                          \n
            "## git remote -vv "                                  \n
            "${CURRENT_GIT_REMOTE}"                              \n
                                                                    \n
            "## More info"                                        \n
            "## git log --pretty -n 1"                            \n
            "${CURRENT_GIT_INFO}"                                \n
            )
        
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libBeamAdapter.so.1.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libBeamAdapter.so.1.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libBeamAdapter.so.1.0"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libBeamAdapter.so.1.0")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libBeamAdapter.so.1.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libBeamAdapter.so.1.0")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libBeamAdapter.so.1.0"
         OLD_RPATH "/home/defrost/sofa2/build/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libBeamAdapter.so.1.0")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libBeamAdapter.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter" TYPE FILE FILES "/home/defrost/sofa2/build/include/BeamAdapter/BeamAdapter/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/initBeamAdapter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/BaseBeamInterpolation.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/BaseBeamInterpolation.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/BeamInterpolation.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/BeamInterpolation.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/WireBeamInterpolation.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/WireBeamInterpolation.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/constraint/AdaptiveBeamSlidingConstraint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/constraint/AdaptiveBeamSlidingConstraint.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/constraint/AdaptiveBeamLengthConstraint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/constraint/AdaptiveBeamLengthConstraint.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/controller" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/controller/AdaptiveBeamController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/controller" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/controller/AdaptiveBeamController.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/controller" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/controller/BeamAdapterActionController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/controller" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/controller/BeamAdapterActionController.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/controller" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/controller/InterventionalRadiologyController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/controller" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/controller/InterventionalRadiologyController.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/controller" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/controller/SutureController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/controller" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/controller/SutureController.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/engine" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/engine/WireRestShape.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/engine" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/engine/WireRestShape.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/forcefield" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/forcefield/AdaptiveBeamForceFieldAndMass.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/forcefield" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/forcefield/AdaptiveBeamForceFieldAndMass.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/forcefield" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/forcefield/AdaptiveInflatableBeamForceField.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/forcefield" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/forcefield/AdaptiveInflatableBeamForceField.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/mapping" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/mapping/AdaptiveBeamMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/mapping" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/mapping/AdaptiveBeamMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/mapping" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/mapping/BeamLengthMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/mapping" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/mapping/BeamLengthMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/mapping" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/mapping/BeamProjectionDifferenceMultiMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/mapping" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/mapping/BeamProjectionDifferenceMultiMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/mapping" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/mapping/MultiAdaptiveBeamMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/mapping" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/mapping/MultiAdaptiveBeamMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/model" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/model/BaseRodSectionMaterial.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/model" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/model/BaseRodSectionMaterial.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/model" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/model/RodMeshSection.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/model" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/model/RodMeshSection.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/model" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/model/RodSpireSection.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/model" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/model/RodSpireSection.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/model" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/model/RodStraightSection.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/component/model" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/component/model/RodStraightSection.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/utils" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/utils/BeamSection.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/utils" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/utils/BeamActions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/BeamAdapter/utils" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/src/BeamAdapter/utils/deprecatedcomponent.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "resources" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE DIRECTORY FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/Authors.md"
    "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/LICENSE.md"
    "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/README.md"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/Cochlear-Implant-Insertion/Mesh" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/Cochlear-Implant-Insertion/Mesh/cochleeCompleteTroueeSimpleOrientationMegaTrou.obj")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/Cochlear-Implant-Insertion/Mesh" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/Cochlear-Implant-Insertion/Mesh/membraneBasilaireBetterFit.obj")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/Cochlear-Implant-Insertion" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/Cochlear-Implant-Insertion/Scene_Cochlea.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/RegressionStateScenes.regression-tests")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/SingleBeam.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/SingleBeamDeployment.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/SingleBeamDeploymentCollision-pythonTemplatesLibrary.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/SingleBeamDeploymentCollision.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/beamadapter" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/beamadapter/__init__.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/beamadapter/parts" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/beamadapter/parts/__init__.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/beamadapter/parts" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/beamadapter/parts/instrument.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/beamadapter/parts" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/beamadapter/parts/vessels.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/beamadapter/sensors" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/beamadapter/sensors/__init__.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/beamadapter/sensors" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/beamadapter/sensors/forceSensors.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/component" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter/examples/python3/component/BeamProjectionDifferenceMultiMapping.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/sofa/python.d" TYPE FILE RENAME "BeamAdapter" FILES "/home/defrost/sofa2/build/applications/plugins/BeamAdapter/installed-SofaPython-config")
endif()

 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX_BACK_BeamAdapter_BeamAdapter}" ) 
