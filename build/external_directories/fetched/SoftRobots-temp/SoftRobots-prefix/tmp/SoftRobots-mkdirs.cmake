# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots-temp/SoftRobots-prefix/src/SoftRobots-build"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots-temp/SoftRobots-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots-temp/SoftRobots-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots-temp/SoftRobots-prefix/src/SoftRobots-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots-temp/SoftRobots-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots-temp/SoftRobots-prefix/src/SoftRobots-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots-temp/SoftRobots-prefix/src/SoftRobots-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots-temp/SoftRobots-prefix/src/SoftRobots-stamp${cfgdir}") # cfgdir has leading slash
endif()
