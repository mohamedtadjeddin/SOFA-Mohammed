# Install script for directory: /home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.NonLinear/Sofa.Component.Mapping.NonLinearTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.NonLinear/Sofa.Component.Mapping.NonLinearTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/Component/Mapping/NonLinear/CMakeFiles/Export/80ee926944b523097f8b26da44ec19a7/Sofa.Component.Mapping.NonLinearTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.NonLinear/Sofa.Component.Mapping.NonLinearTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.NonLinear/Sofa.Component.Mapping.NonLinearTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.NonLinear" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Mapping/NonLinear/CMakeFiles/Export/80ee926944b523097f8b26da44ec19a7/Sofa.Component.Mapping.NonLinearTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.NonLinear" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Mapping/NonLinear/CMakeFiles/Export/80ee926944b523097f8b26da44ec19a7/Sofa.Component.Mapping.NonLinearTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.NonLinear" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Mapping/NonLinear/Sofa.Component.Mapping.NonLinearConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Mapping.NonLinear" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.Component.Mapping.NonLinearConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.NonLinear.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.NonLinear.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.NonLinear.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.Mapping.NonLinear.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.NonLinear.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.NonLinear.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.NonLinear.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Mapping.NonLinear.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.Mapping.NonLinear.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/AreaMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/AreaMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/BaseNonLinearMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/BaseNonLinearMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/DistanceFromTargetMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/DistanceFromTargetMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/DistanceMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/DistanceMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/DistanceMultiMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/DistanceMultiMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/NonLinearMappingData.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/RigidMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/RigidMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/SquareDistanceMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/SquareDistanceMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/SquareMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/SquareMapping.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/VolumeMapping.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Mapping.NonLinear/sofa/component/mapping/nonlinear" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Mapping/NonLinear/src/sofa/component/mapping/nonlinear/VolumeMapping.inl")
endif()

