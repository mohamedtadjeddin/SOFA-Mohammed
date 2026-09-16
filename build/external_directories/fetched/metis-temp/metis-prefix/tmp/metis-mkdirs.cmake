# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/metis"
  "/home/defrost/sofa2/build/external_directories/fetched/metis-temp/metis-prefix/src/metis-build"
  "/home/defrost/sofa2/build/external_directories/fetched/metis-temp/metis-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/metis-temp/metis-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/metis-temp/metis-prefix/src/metis-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/metis-temp/metis-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/metis-temp/metis-prefix/src/metis-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/metis-temp/metis-prefix/src/metis-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/metis-temp/metis-prefix/src/metis-stamp${cfgdir}") # cfgdir has leading slash
endif()
