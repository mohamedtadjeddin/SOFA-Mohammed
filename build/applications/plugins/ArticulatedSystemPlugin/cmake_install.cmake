 set ( CMAKE_INSTALL_PREFIX_BACK_ArticulatedSystemPlugin_ArticulatedSystemPlugin "${CMAKE_INSTALL_PREFIX}" ) 
 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/plugins/ArticulatedSystemPlugin" ) 
# Install script for directory: /home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ArticulatedSystemPlugin/ArticulatedSystemPluginTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ArticulatedSystemPlugin/ArticulatedSystemPluginTargets.cmake"
         "/home/defrost/sofa2/build/applications/plugins/ArticulatedSystemPlugin/CMakeFiles/Export/f6a6d99031a0c6dc18c594c6ffd66d3f/ArticulatedSystemPluginTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ArticulatedSystemPlugin/ArticulatedSystemPluginTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ArticulatedSystemPlugin/ArticulatedSystemPluginTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/ArticulatedSystemPlugin/CMakeFiles/Export/f6a6d99031a0c6dc18c594c6ffd66d3f/ArticulatedSystemPluginTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/ArticulatedSystemPlugin/CMakeFiles/Export/f6a6d99031a0c6dc18c594c6ffd66d3f/ArticulatedSystemPluginTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/build/applications/plugins/ArticulatedSystemPlugin/ArticulatedSystemPluginConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/ArticulatedSystemPluginConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib:\$ORIGIN/../../../lib:\$\$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libArticulatedSystemPlugin.so.1.0")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0"
         OLD_RPATH "/home/defrost/sofa2/build/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib:\$ORIGIN/../../../lib:\$\$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libArticulatedSystemPlugin.so.1.0")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libArticulatedSystemPlugin.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/build/include/ArticulatedSystemPlugin/ArticulatedSystemPlugin/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/ArticulatedHierarchyContainer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/ArticulatedHierarchyContainer.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/ArticulatedSystemMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/ArticulatedSystemMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/ArticulatedHierarchyController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/ArticulatedHierarchyBVHController.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin/bvh" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/bvh/BVHChannels.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin/bvh" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/bvh/BVHJoint.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin/bvh" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/bvh/BVHLoader.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin/bvh" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/bvh/BVHMotion.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ArticulatedSystemPlugin/bvh" TYPE FILE FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/src/ArticulatedSystemPlugin/bvh/BVHOffset.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "resources" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sofa/examples/ArticulatedSystemPlugin" TYPE DIRECTORY FILES "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/examples/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/LICENSE.md"
    "/home/defrost/sofa2/src/applications/plugins/ArticulatedSystemPlugin/README.md"
    )
endif()

 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX_BACK_ArticulatedSystemPlugin_ArticulatedSystemPlugin}" ) 
