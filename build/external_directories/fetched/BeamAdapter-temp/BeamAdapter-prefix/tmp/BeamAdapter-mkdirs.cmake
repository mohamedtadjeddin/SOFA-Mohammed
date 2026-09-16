# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter"
  "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter-temp/BeamAdapter-prefix/src/BeamAdapter-build"
  "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter-temp/BeamAdapter-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter-temp/BeamAdapter-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter-temp/BeamAdapter-prefix/src/BeamAdapter-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter-temp/BeamAdapter-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter-temp/BeamAdapter-prefix/src/BeamAdapter-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter-temp/BeamAdapter-prefix/src/BeamAdapter-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/BeamAdapter-temp/BeamAdapter-prefix/src/BeamAdapter-stamp${cfgdir}") # cfgdir has leading slash
endif()
