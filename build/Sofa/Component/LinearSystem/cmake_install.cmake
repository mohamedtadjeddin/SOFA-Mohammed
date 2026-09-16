# Install script for directory: /home/defrost/sofa2/src/Sofa/Component/LinearSystem

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSystem/Sofa.Component.LinearSystemTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSystem/Sofa.Component.LinearSystemTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/Component/LinearSystem/CMakeFiles/Export/a3f5b4d6a811d2918e4812c53c123482/Sofa.Component.LinearSystemTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSystem/Sofa.Component.LinearSystemTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSystem/Sofa.Component.LinearSystemTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSystem" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/LinearSystem/CMakeFiles/Export/a3f5b4d6a811d2918e4812c53c123482/Sofa.Component.LinearSystemTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSystem" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/LinearSystem/CMakeFiles/Export/a3f5b4d6a811d2918e4812c53c123482/Sofa.Component.LinearSystemTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSystem" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/LinearSystem/Sofa.Component.LinearSystemConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSystem" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.Component.LinearSystemConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSystem.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSystem.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSystem.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.LinearSystem.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSystem.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSystem.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSystem.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSystem.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.LinearSystem.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/BaseMatrixProjectionMethod.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/BaseMatrixProjectionMethod.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/CompositeLinearSystem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/CompositeLinearSystem.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/ConstantSparsityPatternSystem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/ConstantSparsityPatternSystem.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/ConstantSparsityProjectionMethod.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/ConstantSparsityProjectionMethod.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/CreateMatrixDispatcher.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/LinearSystemData.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/MappedMassMatrixObserver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/MappedMassMatrixObserver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/MappingGraph.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/MatrixFreeSystem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/MatrixLinearSystem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/MatrixLinearSystem.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/MatrixProjectionMethod.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/MatrixProjectionMethod.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/TypedMatrixLinearSystem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/TypedMatrixLinearSystem.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/matrixaccumulators" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/matrixaccumulators/AssemblingMappedMatrixAccumulator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/matrixaccumulators" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/matrixaccumulators/AssemblingMatrixAccumulator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/matrixaccumulators" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/matrixaccumulators/BaseAssemblingMatrixAccumulator.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/matrixaccumulators" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/matrixaccumulators/ConstantLocalMappedMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/matrixaccumulators" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/matrixaccumulators/ConstantLocalMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/matrixaccumulators" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/matrixaccumulators/SparsityPatternLocalMappedMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/matrixaccumulators" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/matrixaccumulators/SparsityPatternLocalMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/visitors" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/visitors/AssembleGlobalVectorFromLocalVectorVisitor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSystem/sofa/component/linearsystem/visitors" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSystem/src/sofa/component/linearsystem/visitors/DispatchFromGlobalVectorToLocalVectorVisitor.h")
endif()

