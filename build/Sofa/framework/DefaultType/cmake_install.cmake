# Install script for directory: /home/defrost/sofa2/src/Sofa/framework/DefaultType

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/framework/DefaultType/CMakeFiles/Export/4c348f57865a0651d1be23f34626e2c9/Sofa.DefaultTypeTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType/Sofa.DefaultTypeTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/framework/DefaultType/CMakeFiles/Export/4c348f57865a0651d1be23f34626e2c9/Sofa.DefaultTypeTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/framework/DefaultType/CMakeFiles/Export/4c348f57865a0651d1be23f34626e2c9/Sofa.DefaultTypeTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/framework/DefaultType/Sofa.DefaultTypeConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.DefaultType" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.DefaultTypeConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.DefaultType.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.DefaultType.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.DefaultType.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/AbstractTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/DataTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/DataTypeOperations.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/MapMapSparseMatrix.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/MapMapSparseMatrixEigenUtils.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/MatrixExporter.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidCoord.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidDeriv.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidMass.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/RigidVec6Types.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/SolidTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/SolidTypes.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TemplatesAliases.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TypeInfoID.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TypeInfoRegistry.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/TypeInfoRegistryTools.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/VecTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.DefaultType/sofa/defaulttype/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/fwd.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/DataTypeInfoDynamicWrapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/DataTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/NoTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/NameOnlyTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Bool.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_BoundingBox.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_FixedArray.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Integer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Mat.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Quat.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_RigidTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_RGBAColor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Set.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Scalar.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_SelectableItem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Text.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Vector.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Vec.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_VecTypes.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/TypeInfo_Topology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/IncompleteTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/BoolTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/IntegerTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/FixedArrayTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/SetTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/ScalarTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/TextTypeInfo.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.DefaultType/sofa/defaulttype/typeinfo/models" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/framework/DefaultType/src/sofa/defaulttype/typeinfo/models/VectorTypeInfo.h")
endif()

