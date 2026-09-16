# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/googletest"
  "/home/defrost/sofa2/build/external_directories/fetched/googletest-temp/googletest-prefix/src/googletest-build"
  "/home/defrost/sofa2/build/external_directories/fetched/googletest-temp/googletest-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/googletest-temp/googletest-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/googletest-temp/googletest-prefix/src/googletest-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/googletest-temp/googletest-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/googletest-temp/googletest-prefix/src/googletest-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/googletest-temp/googletest-prefix/src/googletest-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/googletest-temp/googletest-prefix/src/googletest-stamp${cfgdir}") # cfgdir has leading slash
endif()
