# Install script for directory: /home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "resources" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/SofaPython3/examples" TYPE FILE FILES
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/access_compliance_matrix.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/access_mass_matrix.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/access_matrix.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/access_stiffness_matrix.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/additional-examples/ControllerScene.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/advanced_timer.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/basic-addGUI.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/basic.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/CMakeLists.txt"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/emptyController.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/emptyDataEngine.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/emptyForceField.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/example-forcefield.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/example-scriptcontroller.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/keyEvents.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/liver.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/liver-scriptcontroller.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/loadXMLfromPython.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/pointSetTopologyModifier.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/ReadTheDocs_Example.py"
    "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3/examples/springForceField.py"
    )
endif()

