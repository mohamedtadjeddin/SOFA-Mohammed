# Install script for directory: /home/defrost/sofa2/src/Sofa/Component/Mapping/Linear

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/Component/Mapping/Linear/CMakeFiles/Export/9009d60abd4c6c4865c84ff4dc719f39/Sofa.Component.Mapping.LinearTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear/Sofa.Component.Mapping.LinearTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Mapping/Linear/CMakeFiles/Export/9009d60abd4c6c4865c84ff4dc719f39/Sofa.Component.Mapping.LinearTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Mapping/Linear/CMakeFiles/Export/9009d60abd4c6c4865c84ff4dc719f39/Sofa.Component.Mapping.LinearTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Mapping/Linear/Sofa.Component.Mapping.LinearConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.Linear" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.Component.Mapping.LinearConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.Mapping.Linear.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.Linear.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.Mapping.Linear.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapper.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperEdgeSetTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperEdgeSetTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperHexahedronSetTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperHexahedronSetTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperMeshTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperMeshTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperQuadSetTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperQuadSetTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperRegularGridTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperRegularGridTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperSparseGridTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperSparseGridTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTetrahedronSetTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTetrahedronSetTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTopologyContainer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTopologyContainer.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTriangleSetTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/BarycentricMapperTriangleSetTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/TopologyBarycentricMapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear/BarycentricMappers" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappers/TopologyBarycentricMapper.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappingRigid.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BarycentricMappingRigid.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BeamLinearMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/BeamLinearMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMappingOperation.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMulti2Mapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMulti2Mapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMultiMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/CenterOfMassMultiMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/DeformableOnRigidFrameMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/DeformableOnRigidFrameMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/DistanceToPlaneMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/DistanceToPlaneMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/IdentityMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/IdentityMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/IdentityMultiMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/IdentityMultiMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/LinearMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/LineSetSkinningMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/LineSetSkinningMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointMechanicalMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointMechanicalMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointMechanicalMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointMechanicalMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointTopologicalMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/Mesh2PointTopologicalMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedHexaTopologicalMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraMechanicalMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraMechanicalMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraMechanicalMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraMechanicalMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SimpleTesselatedTetraTopologicalMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SkinningMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SkinningMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SubsetMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SubsetMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SubsetMultiMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/SubsetMultiMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/TubularMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/TubularMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.Linear/sofa/component/mapping/linear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/Linear/src/sofa/component/mapping/linear/VoidMapping.h")
endif()

