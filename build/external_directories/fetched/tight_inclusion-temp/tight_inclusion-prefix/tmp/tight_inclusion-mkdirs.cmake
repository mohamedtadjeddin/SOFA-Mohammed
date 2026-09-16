# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion"
  "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-build"
  "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp${cfgdir}") # cfgdir has leading slash
endif()
