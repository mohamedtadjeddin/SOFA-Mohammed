# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders"
  "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders-temp/IconFontCppHeaders-prefix/src/IconFontCppHeaders-build"
  "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders-temp/IconFontCppHeaders-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders-temp/IconFontCppHeaders-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders-temp/IconFontCppHeaders-prefix/src/IconFontCppHeaders-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders-temp/IconFontCppHeaders-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders-temp/IconFontCppHeaders-prefix/src/IconFontCppHeaders-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders-temp/IconFontCppHeaders-prefix/src/IconFontCppHeaders-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders-temp/IconFontCppHeaders-prefix/src/IconFontCppHeaders-stamp${cfgdir}") # cfgdir has leading slash
endif()
