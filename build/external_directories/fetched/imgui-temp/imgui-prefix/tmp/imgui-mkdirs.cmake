# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/imgui"
  "/home/defrost/sofa2/build/external_directories/fetched/imgui-temp/imgui-prefix/src/imgui-build"
  "/home/defrost/sofa2/build/external_directories/fetched/imgui-temp/imgui-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/imgui-temp/imgui-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/imgui-temp/imgui-prefix/src/imgui-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/imgui-temp/imgui-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/imgui-temp/imgui-prefix/src/imgui-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/imgui-temp/imgui-prefix/src/imgui-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/imgui-temp/imgui-prefix/src/imgui-stamp${cfgdir}") # cfgdir has leading slash
endif()
