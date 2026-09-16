 set ( CMAKE_INSTALL_PREFIX_BACK_SofaImGui_SofaImGui "${CMAKE_INSTALL_PREFIX}" ) 
 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}/plugins/SofaImGui" ) 
# Install script for directory: /home/defrost/sofa2/plugins/SofaGLFW/SofaImGui

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaImGui/SofaImGuiTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaImGui/SofaImGuiTargets.cmake"
         "/home/defrost/sofa2/build/external_directories/plugins/SofaGLFW/SofaImGui/CMakeFiles/Export/4de0d43de98895204182b60fe9458fea/SofaImGuiTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaImGui/SofaImGuiTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaImGui/SofaImGuiTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/plugins/SofaGLFW/SofaImGui/CMakeFiles/Export/4de0d43de98895204182b60fe9458fea/SofaImGuiTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/plugins/SofaGLFW/SofaImGui/CMakeFiles/Export/4de0d43de98895204182b60fe9458fea/SofaImGuiTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/build/external_directories/plugins/SofaGLFW/SofaImGui/SofaImGuiConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/SofaImGuiConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaImGui.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaImGui.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaImGui.so.25.12.00"
         RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../plugins/SofaGLFW/lib:$$ORIGIN/../../../plugins/SofaGLFW/lib:@loader_path/../../../plugins/SofaGLFW/lib:@executable_path/../../../plugins/SofaGLFW/lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofaImGui.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaImGui.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaImGui.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaImGui.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:$$ORIGIN/../lib:$ORIGIN/../../../plugins/SofaGLFW/lib:$$ORIGIN/../../../plugins/SofaGLFW/lib:@loader_path/../../../plugins/SofaGLFW/lib:@executable_path/../../../plugins/SofaGLFW/lib:$ORIGIN/../../../lib:$$ORIGIN/../../../lib:@loader_path/../../../lib:@executable_path/../../../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofaImGui.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofaImGui.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/build/include/SofaImGui/SofaImGui/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/ImGuiDataWidget.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/ImGuiGUI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/ImGuiGUIEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/UIStrings.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/widgets" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/widgets/DisplayFlagsWidget.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/widgets" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/widgets/LinearSpringWidget.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/widgets" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/widgets/MaterialWidget.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/widgets" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/widgets/RigidMass.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/widgets" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/widgets/ScalarWidget.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/windows" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/windows/Log.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/windows" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/windows/MouseManager.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/windows" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/windows/Profiler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/windows" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/windows/SceneGraph.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/windows" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/windows/DisplayFlags.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/windows" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/windows/Plugins.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/windows" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/windows/Components.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/AppIniFile.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/windows" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/windows/WindowState.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/guis" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/guis/BaseAdditionalGUI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SofaImGui/guis" TYPE FILE FILES "/home/defrost/sofa2/plugins/SofaGLFW/SofaImGui/src/SofaImGui/guis/AdditionalGUIRegistry.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/defrost/sofa2/build/external_directories/fetched/nfd-build/cmake_install.cmake")
  include("/home/defrost/sofa2/build/external_directories/fetched/simpleini-build/cmake_install.cmake")
  include("/home/defrost/sofa2/build/external_directories/plugins/SofaGLFW/SofaImGui/bindings/cmake_install.cmake")

endif()

 set ( CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX_BACK_SofaImGui_SofaImGui}" ) 
