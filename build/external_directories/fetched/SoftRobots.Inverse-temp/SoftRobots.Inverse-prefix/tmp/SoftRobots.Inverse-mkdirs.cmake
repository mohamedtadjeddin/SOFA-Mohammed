# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse-temp/SoftRobots.Inverse-prefix/src/SoftRobots.Inverse-build"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse-temp/SoftRobots.Inverse-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse-temp/SoftRobots.Inverse-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse-temp/SoftRobots.Inverse-prefix/src/SoftRobots.Inverse-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse-temp/SoftRobots.Inverse-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse-temp/SoftRobots.Inverse-prefix/src/SoftRobots.Inverse-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse-temp/SoftRobots.Inverse-prefix/src/SoftRobots.Inverse-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SoftRobots.Inverse-temp/SoftRobots.Inverse-prefix/src/SoftRobots.Inverse-stamp${cfgdir}") # cfgdir has leading slash
endif()
