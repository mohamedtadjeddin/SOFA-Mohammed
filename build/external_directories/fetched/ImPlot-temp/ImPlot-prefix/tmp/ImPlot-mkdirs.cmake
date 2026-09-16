# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/ImPlot"
  "/home/defrost/sofa2/build/external_directories/fetched/ImPlot-temp/ImPlot-prefix/src/ImPlot-build"
  "/home/defrost/sofa2/build/external_directories/fetched/ImPlot-temp/ImPlot-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/ImPlot-temp/ImPlot-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/ImPlot-temp/ImPlot-prefix/src/ImPlot-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/ImPlot-temp/ImPlot-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/ImPlot-temp/ImPlot-prefix/src/ImPlot-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/ImPlot-temp/ImPlot-prefix/src/ImPlot-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/ImPlot-temp/ImPlot-prefix/src/ImPlot-stamp${cfgdir}") # cfgdir has leading slash
endif()
