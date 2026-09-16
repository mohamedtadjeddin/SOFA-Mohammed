# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/glfw"
  "/home/defrost/sofa2/build/external_directories/fetched/glfw-temp/glfw-prefix/src/glfw-build"
  "/home/defrost/sofa2/build/external_directories/fetched/glfw-temp/glfw-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/glfw-temp/glfw-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/glfw-temp/glfw-prefix/src/glfw-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/glfw-temp/glfw-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/glfw-temp/glfw-prefix/src/glfw-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/glfw-temp/glfw-prefix/src/glfw-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/glfw-temp/glfw-prefix/src/glfw-stamp${cfgdir}") # cfgdir has leading slash
endif()
