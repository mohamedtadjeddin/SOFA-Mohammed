# Install script for directory: /home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/Component/LinearSolver/Direct/CMakeFiles/Export/6e0975641239a446ca3920dc4c515a7d/Sofa.Component.LinearSolver.DirectTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct/Sofa.Component.LinearSolver.DirectTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/LinearSolver/Direct/CMakeFiles/Export/6e0975641239a446ca3920dc4c515a7d/Sofa.Component.LinearSolver.DirectTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/LinearSolver/Direct/CMakeFiles/Export/6e0975641239a446ca3920dc4c515a7d/Sofa.Component.LinearSolver.DirectTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/LinearSolver/Direct/Sofa.Component.LinearSolver.DirectConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.LinearSolver.Direct" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.Component.LinearSolver.DirectConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.LinearSolver.Direct.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.LinearSolver.Direct.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.LinearSolver.Direct.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/AsyncSparseLDLSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/AsyncSparseLDLSolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/BTDLinearSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/BTDLinearSolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/CholeskySolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/CholeskySolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenDirectSparseSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenDirectSparseSolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSolverFactory.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSimplicialLDLT.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSimplicialLLT.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSparseLU.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/EigenSparseQR.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/MatrixLinearSystem[BTDMatrix].h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/PrecomputedLinearSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/PrecomputedLinearSolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SVDLinearSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SVDLinearSolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseCholeskySolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseCholeskySolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseCommon.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLDLSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLDLSolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLDLSolverImpl.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLUSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/SparseLUSolver.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.LinearSolver.Direct/sofa/component/linearsolver/direct" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/LinearSolver/Direct/src/sofa/component/linearsolver/direct/TypedMatrixLinearSystem[BTDMatrix].h")
endif()

