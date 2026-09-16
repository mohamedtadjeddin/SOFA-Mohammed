# Install script for directory: /home/defrost/sofa2/src/Sofa/framework/LinearAlgebra

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/framework/LinearAlgebra/CMakeFiles/Export/f90ca3ab61d9173d392813c4f08f1798/Sofa.LinearAlgebraTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra/Sofa.LinearAlgebraTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/framework/LinearAlgebra/CMakeFiles/Export/f90ca3ab61d9173d392813c4f08f1798/Sofa.LinearAlgebraTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/framework/LinearAlgebra/CMakeFiles/Export/f90ca3ab61d9173d392813c4f08f1798/Sofa.LinearAlgebraTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/framework/LinearAlgebra/Sofa.LinearAlgebraConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.LinearAlgebra" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.LinearAlgebraConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.LinearAlgebra.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.LinearAlgebra.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.LinearAlgebra.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.LinearAlgebra/sofa/linearalgebra/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BTDMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BTDMatrix.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BaseMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BaseVector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockFullMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockFullMatrix.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockDiagonalMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockDiagonalMatrix.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockVector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/BlockVector.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/CompressedRowSparseMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/CompressedRowSparseMatrixConstraint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/CompressedRowSparseMatrixConstraintEigenUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/CompressedRowSparseMatrixGeneric.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/CompressedRowSparseMatrixMechanical.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/DiagonalMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/DiagonalSystemSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/EigenBaseSparseMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/EigenSparseMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/EigenVector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/FullMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/FullMatrix.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/FullVector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/FullVector.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/MatrixExpr.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/RotationMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixProduct.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixProduct.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixStorageOrder.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/SparseMatrixStorageOrder[EigenSparseMatrix].h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/TriangularSystemSolver.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.LinearAlgebra/sofa/linearalgebra" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/LinearAlgebra/src/sofa/linearalgebra/matrix_bloc_traits.h")
endif()

