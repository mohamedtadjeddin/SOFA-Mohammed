# Install script for directory: /home/defrost/sofa2/src/Sofa/Component/Engine/Select

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Select/Sofa.Component.Engine.SelectTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Select/Sofa.Component.Engine.SelectTargets.cmake"
         "/home/defrost/sofa2/build/Sofa/Component/Engine/Select/CMakeFiles/Export/d27361f6f03509afbb4e456c4c13f0ea/Sofa.Component.Engine.SelectTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Select/Sofa.Component.Engine.SelectTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Select/Sofa.Component.Engine.SelectTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Select" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Engine/Select/CMakeFiles/Export/d27361f6f03509afbb4e456c4c13f0ea/Sofa.Component.Engine.SelectTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Select" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Engine/Select/CMakeFiles/Export/d27361f6f03509afbb4e456c4c13f0ea/Sofa.Component.Engine.SelectTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Select" TYPE FILE FILES "/home/defrost/sofa2/build/Sofa/Component/Engine/Select/Sofa.Component.Engine.SelectConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Sofa.Component.Engine.Select" TYPE FILE FILES "/home/defrost/sofa2/build/lib/cmake/Sofa.Component.Engine.SelectConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Select.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Select.so.25.12.00")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Select.so.25.12.00"
         RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.Engine.Select.so.25.12.00")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Select.so.25.12.00" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Select.so.25.12.00")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Select.so.25.12.00"
         OLD_RPATH "/home/defrost/sofa2/build/lib:"
         NEW_RPATH "\$ORIGIN/../lib:\$\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/llvm-strip-20" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSofa.Component.Engine.Select.so.25.12.00")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/defrost/sofa2/build/lib/libSofa.Component.Engine.Select.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/build/include/Sofa.Component.Engine.Select/sofa/component/engine/select/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/init.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/BaseROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/BaseROI.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/BoxROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/BoxROI.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/ComplementaryROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/ComplementaryROI.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/IndicesFromValues.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/IndicesFromValues.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MergeROIs.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshBoundaryROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshROI.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshSampler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshSampler.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshSplittingEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshSplittingEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshSubsetEngine.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/MeshSubsetEngine.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/NearestPointROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/NearestPointROI.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/PairBoxRoi.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/PairBoxRoi.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/PlaneROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/PlaneROI.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/PointsFromIndices.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/PointsFromIndices.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/ProximityROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/ProximityROI.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/SelectConnectedLabelsROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/SelectLabelROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/SphereROI.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/SphereROI.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/SubsetTopology.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/SubsetTopology.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/ValuesFromIndices.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/ValuesFromIndices.inl")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/ValuesFromPositions.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/Sofa.Component.Engine.Select/sofa/component/engine/select" TYPE FILE FILES "/home/defrost/sofa2/src/Sofa/Component/Engine/Select/src/sofa/component/engine/select/ValuesFromPositions.inl")
endif()

