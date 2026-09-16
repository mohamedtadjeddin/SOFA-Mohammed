# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/nfd"
  "/home/defrost/sofa2/build/external_directories/fetched/nfd-temp/nfd-prefix/src/nfd-build"
  "/home/defrost/sofa2/build/external_directories/fetched/nfd-temp/nfd-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/nfd-temp/nfd-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/nfd-temp/nfd-prefix/src/nfd-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/nfd-temp/nfd-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/nfd-temp/nfd-prefix/src/nfd-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/nfd-temp/nfd-prefix/src/nfd-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/nfd-temp/nfd-prefix/src/nfd-stamp${cfgdir}") # cfgdir has leading slash
endif()
