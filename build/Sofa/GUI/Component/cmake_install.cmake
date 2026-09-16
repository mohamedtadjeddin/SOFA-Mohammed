# Install script for directory: /home/defrost/sofa2/src/Sofa/GUI/Component

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Component/Sofa.GUI.ComponentTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Component/Sofa.GUI.ComponentTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/GUI/Component/CMakeFiles/Export/476ccb3f6b106fcd0e6a590e0a0fc54f/Sofa.GUI.ComponentTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Component/Sofa.GUI.ComponentTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Component/Sofa.GUI.ComponentTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Component" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/GUI/Component/CMakeFiles/Export/476ccb3f6b106fcd0e6a590e0a0fc54f/Sofa.GUI.ComponentTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Component" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/GUI/Component/CMakeFiles/Export/476ccb3f6b106fcd0e6a590e0a0fc54f/Sofa.GUI.ComponentTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Component" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/GUI/Component/Sofa.GUI.ComponentConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.GUI.Component" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.GUI.ComponentConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Component.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Component.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Component.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.GUI.Component.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Component.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Component.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Component.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.GUI.Component.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.GUI.Component.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.GUI.Component/sofa/gui/component/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/AddFrameButtonSetting.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/AddRecordedCameraButtonSetting.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/AttachBodyButtonSetting.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/FixPickedParticleButtonSetting.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/ConstraintAttachButtonSetting.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/AddRecordedCameraPerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/AttachBodyPerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/AttachBodyPerformer.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/BaseAttachBodyPerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/BaseAttachBodyPerformer.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/ComponentMouseInteraction.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/ComponentMouseInteraction.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/ConstraintAttachBodyPerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/ConstraintAttachBodyPerformer.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/FixParticlePerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/FixParticlePerformer.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/InciseAlongPathPerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/InteractionPerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/MouseInteractor.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/MouseInteractor.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/RemovePrimitivePerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/RemovePrimitivePerformer.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/StartNavigationPerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/SuturePointPerformer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/SuturePointPerformer.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.GUI.Component/sofa/gui/component/performer" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/GUI/Component/src/sofa/gui/component/performer/TopologicalChangeManager.h")
endif()

