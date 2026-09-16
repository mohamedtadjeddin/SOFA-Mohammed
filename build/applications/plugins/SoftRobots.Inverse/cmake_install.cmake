 set ( CMAKE_INSTALL_PREFIX_BACK_SoftRobots.Inverse_SoftRobots "${CMAKE_INSTALL_PREFIX}" ) 
 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/plugins/SoftRobots.Inverse" ) 
# Install script for directory: /home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SoftRobots.Inverse/SoftRobots.InverseTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SoftRobots.Inverse/SoftRobots.InverseTargets.cmake"
         "/home/defrost/sofa2/build/applications/plugins/SoftRobots.Inverse/CMakeFiles/Export/7c9b4bd0b266add16586ee0b469ee41f/SoftRobots.InverseTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SoftRobots.Inverse/SoftRobots.InverseTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SoftRobots.Inverse/SoftRobots.InverseTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SoftRobots.Inverse" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/SoftRobots.Inverse/CMakeFiles/Export/7c9b4bd0b266add16586ee0b469ee41f/SoftRobots.InverseTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SoftRobots.Inverse" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/SoftRobots.Inverse/CMakeFiles/Export/7c9b4bd0b266add16586ee0b469ee41f/SoftRobots.InverseTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SoftRobots.Inverse" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/SoftRobots.Inverse/SoftRobots.InverseConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SoftRobots.Inverse" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/SoftRobots.InverseConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "resources" OR NOT CMAKE_INSTALL_COMPONENT)
  
        find_package(Git REQUIRED)
        # get the current commit sha
        execute_process(
            COMMAND ${GIT_EXECUTABLE} rev-parse HEAD
            WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse"
            OUTPUT_VARIABLE CURRENT_GIT_COMMIT
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get the branches containing current commit
        execute_process(
            COMMAND ${GIT_EXECUTABLE} branch -a --contains "${CURRENT_GIT_COMMIT}"
            WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse"
            OUTPUT_VARIABLE CURRENT_GIT_BRANCH
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get the current remotes
        execute_process(
            COMMAND ${GIT_EXECUTABLE} remote -vv
            WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse"
            OUTPUT_VARIABLE CURRENT_GIT_REMOTE
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # get more info (hash, author, date, comment)
        execute_process(
            COMMAND ${GIT_EXECUTABLE} log --pretty -n 1
            WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse"
            OUTPUT_VARIABLE CURRENT_GIT_INFO
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        # write all info in git-info.txt
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/git-info.txt"
            "# Git info for SoftRobots.Inverse"                              \n
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSoftRobots.Inverse.so.1.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSoftRobots.Inverse.so.1.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSoftRobots.Inverse.so.1.0"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib:$ORIGIN/../../../plugins/SoftRobots/lib:$$ORIGIN/../../../plugins/SoftRobots/lib:@loader_path/../../../plugins/SoftRobots/lib:@executable_path/../../../plugins/SoftRobots/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSoftRobots.Inverse.so.1.0")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSoftRobots.Inverse.so.1.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSoftRobots.Inverse.so.1.0")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSoftRobots.Inverse.so.1.0"
         OLD_RPATH "/home/defrost/sofa2/build/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib:$ORIGIN/../../../plugins/SoftRobots/lib:$$ORIGIN/../../../plugins/SoftRobots/lib:@loader_path/../../../plugins/SoftRobots/lib:@executable_path/../../../plugins/SoftRobots/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSoftRobots.Inverse.so.1.0")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSoftRobots.Inverse.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component" TYPE FILE FILES "/home/defrost/sofa2/build/include/SoftRobots.Inverse/SoftRobots.Inverse/component/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/behavior" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/behavior/Effector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/behavior" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/behavior/Effector.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/BarycentricCenterEffector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/BarycentricCenterEffector.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/CableEffector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/CableEffector.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/PositionEffector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/PositionEffector.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/VolumeEffector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/VolumeEffector.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/behavior" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/behavior/Actuator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/behavior" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/behavior/Actuator.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/YoungModulusActuator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/YoungModulusActuator.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/CableActuator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/CableActuator.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/ForceSurfaceActuator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/ForceSurfaceActuator.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/ForcePointActuator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/ForcePointActuator.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/JointActuator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/JointActuator.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/SlidingActuator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/SlidingActuator.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/SurfacePressureActuator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/SurfacePressureActuator.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/behavior" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/behavior/Sensor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/behavior" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/behavior/Sensor.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/CableSensor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/CableSensor.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/SurfacePressureSensor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/SurfacePressureSensor.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/behavior" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/behavior/Equality.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/behavior" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/behavior/Equality.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/CableEquality.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/CableEquality.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/PositionEquality.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/PositionEquality.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/SurfacePressureEquality.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/constraint" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/constraint/SurfacePressureEquality.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/QPInverseProblemSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/ContactHandler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/ConstraintHandler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/LCPQPSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/NLCPSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/QPInverseProblem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/QPInverseProblemImpl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/QPMechanicalAccumulateConstraint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/QPMechanicalSetConstraint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/QPInverseProblemQPOases.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SoftRobots.Inverse/component/solver/modules" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/src/SoftRobots.Inverse/component/solver/modules/LCPQPSolverQPOases.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "resources" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sofa/examples/SoftRobots.Inverse" TYPE DIRECTORY FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/examples/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/LICENSE.AGPLV3.Clause11.txt"
    "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/LICENSE.AGPLV3.txt"
    "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/README.md"
    "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/SoftRobots.Inverse.md"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/docs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "applications" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/README.md"
    "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/LICENSE.AGPLV3.txt"
    "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/LICENSE.AGPLV3.Clause11.txt"
    "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse/CHANGELOG"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/defrost/sofa2/build/applications/plugins/SoftRobots.Inverse/extlibs/libqpOASES/cmake_install.cmake")
  include("/home/defrost/sofa2/build/applications/plugins/SoftRobots.Inverse/src/SoftRobots.Inverse/binding/cmake_install.cmake")

endif()

 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX_BACK_SoftRobots.Inverse_SoftRobots}" ) 
