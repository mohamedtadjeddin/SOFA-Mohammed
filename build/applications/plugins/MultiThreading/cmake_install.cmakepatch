 set ( CMAKE_INSTALL_PREFIX_BACK_MultiThreading_MultiThreading "${CMAKE_INSTALL_PREFIX}" ) 
 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/plugins/MultiThreading" ) 
# Install script for directory: /home/defrost/sofa2/src/applications/plugins/MultiThreading

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/MultiThreading/MultiThreadingTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/MultiThreading/MultiThreadingTargets.cmake"
         "/home/defrost/sofa2/build/applications/plugins/MultiThreading/CMakeFiles/Export/0266d9e2183df692b8dc369dc4f81e04/MultiThreadingTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/MultiThreading/MultiThreadingTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/MultiThreading/MultiThreadingTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/MultiThreading/CMakeFiles/Export/0266d9e2183df692b8dc369dc4f81e04/MultiThreadingTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/MultiThreading/CMakeFiles/Export/0266d9e2183df692b8dc369dc4f81e04/MultiThreadingTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/MultiThreading/MultiThreadingConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/MultiThreadingConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMultiThreading.so.0.1" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMultiThreading.so.0.1")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMultiThreading.so.0.1"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib:\$ORIGIN/../../../lib:\$\$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libMultiThreading.so.0.1")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMultiThreading.so.0.1" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMultiThreading.so.0.1")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMultiThreading.so.0.1"
         OLD_RPATH "/home/defrost/sofa2/build/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib:\$ORIGIN/../../../lib:\$\$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMultiThreading.so.0.1")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libMultiThreading.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/build/include/MultiThreading/MultiThreading/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/initMultiThreading.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/DataExchange.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/DataExchange.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/MeanComputation.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/MeanComputation.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/animationloop" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/animationloop/AnimationLoopParallelScheduler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/collision/detection/algorithm" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/collision/detection/algorithm/ParallelBVHNarrowPhase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/collision/detection/algorithm" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/collision/detection/algorithm/ParallelBruteForceBroadPhase.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/linearsolver/iterative" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/linearsolver/iterative/ParallelCGLinearSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/linearsolver/iterative" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/linearsolver/iterative/ParallelCGLinearSolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/linearsolver/iterative" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/linearsolver/iterative/ParallelCompressedRowSparseMatrixMechanical.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/mapping/linear/BeamLinearMapping_mt.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/mapping/linear/BeamLinearMapping_mt.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/mapping/linear/BeamLinearMapping_tasks.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/fem/elastic/ParallelHexahedronFEMForceField.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/fem/elastic/ParallelHexahedronFEMForceField.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/fem/elastic/ParallelTetrahedronFEMForceField.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/fem/elastic" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/fem/elastic/ParallelTetrahedronFEMForceField.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/spring" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/spring/ParallelStiffSpringForceField.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/spring" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/spring/ParallelStiffSpringForceField.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/spring" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/spring/ParallelSpringForceField.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/spring" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/spring/ParallelSpringForceField.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/spring" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/spring/ParallelMeshSpringForceField.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading/component/solidmechanics/spring" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/component/solidmechanics/spring/ParallelMeshSpringForceField.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/SceneCheckMultithreading.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/src/MultiThreading/ParallelImplementationsRegistry.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "resources" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sofa/examples/MultiThreading" TYPE DIRECTORY FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/examples/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/MultiThreading_compat" TYPE DIRECTORY FILES "/home/defrost/sofa2/src/applications/plugins/MultiThreading/compat/")
endif()

 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX_BACK_MultiThreading_MultiThreading}" ) 
