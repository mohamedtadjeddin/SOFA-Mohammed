# Install script for directory: /home/defrost/sofa2/src/Sofa/Component/Engine/Transform

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Transform/Sofa.Component.Engine.TransformTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Transform/Sofa.Component.Engine.TransformTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/Component/Engine/Transform/CMakeFiles/Export/ee12bc89c48d8518bbadfde6bce84b02/Sofa.Component.Engine.TransformTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Transform/Sofa.Component.Engine.TransformTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Transform/Sofa.Component.Engine.TransformTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Transform" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Engine/Transform/CMakeFiles/Export/ee12bc89c48d8518bbadfde6bce84b02/Sofa.Component.Engine.TransformTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Transform" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Engine/Transform/CMakeFiles/Export/ee12bc89c48d8518bbadfde6bce84b02/Sofa.Component.Engine.TransformTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Transform" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Engine/Transform/Sofa.Component.Engine.TransformConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Transform" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.Component.Engine.TransformConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Transform.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Transform.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Transform.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.Engine.Transform.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Transform.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Transform.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Transform.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Transform.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.Engine.Transform.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/DifferenceEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/DifferenceEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/DilateEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/DilateEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/DisplacementMatrixEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/DisplacementMatrixEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/IndexValueMapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/IndexValueMapper.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/Indices2ValuesMapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/Indices2ValuesMapper.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/MapIndices.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/MapIndices.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/MathOp.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/MathOp.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/ProjectiveTransformEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/ProjectiveTransformEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/QuatToRigidEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/QuatToRigidEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/ROIValueMapper.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/RigidToQuatEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/RigidToQuatEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/SmoothMeshEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/SmoothMeshEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/TransformEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/TransformEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/TransformMatrixEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/TransformPosition.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/TransformPosition.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/Vertex2Frame.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Transform/sofa/component/engine/transform" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Transform/src/sofa/component/engine/transform/Vertex2Frame.inl")
endif()

