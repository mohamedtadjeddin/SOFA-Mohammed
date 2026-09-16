# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/STLIB"
  "/home/defrost/sofa2/build/external_directories/fetched/STLIB-temp/STLIB-prefix/src/STLIB-build"
  "/home/defrost/sofa2/build/external_directories/fetched/STLIB-temp/STLIB-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/STLIB-temp/STLIB-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/STLIB-temp/STLIB-prefix/src/STLIB-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/STLIB-temp/STLIB-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/STLIB-temp/STLIB-prefix/src/STLIB-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/STLIB-temp/STLIB-prefix/src/STLIB-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/STLIB-temp/STLIB-prefix/src/STLIB-stamp${cfgdir}") # cfgdir has leading slash
endif()
