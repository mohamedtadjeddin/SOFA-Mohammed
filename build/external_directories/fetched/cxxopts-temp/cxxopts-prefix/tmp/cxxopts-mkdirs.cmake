# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/cxxopts"
  "/home/defrost/sofa2/build/external_directories/fetched/cxxopts-temp/cxxopts-prefix/src/cxxopts-build"
  "/home/defrost/sofa2/build/external_directories/fetched/cxxopts-temp/cxxopts-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/cxxopts-temp/cxxopts-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/cxxopts-temp/cxxopts-prefix/src/cxxopts-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/cxxopts-temp/cxxopts-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/cxxopts-temp/cxxopts-prefix/src/cxxopts-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/cxxopts-temp/cxxopts-prefix/src/cxxopts-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/cxxopts-temp/cxxopts-prefix/src/cxxopts-stamp${cfgdir}") # cfgdir has leading slash
endif()
