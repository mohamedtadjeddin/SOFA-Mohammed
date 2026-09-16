# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3"
  "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3-temp/SofaPython3-prefix/src/SofaPython3-build"
  "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3-temp/SofaPython3-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3-temp/SofaPython3-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3-temp/SofaPython3-prefix/src/SofaPython3-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3-temp/SofaPython3-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3-temp/SofaPython3-prefix/src/SofaPython3-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3-temp/SofaPython3-prefix/src/SofaPython3-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/SofaPython3-temp/SofaPython3-prefix/src/SofaPython3-stamp${cfgdir}") # cfgdir has leading slash
endif()
