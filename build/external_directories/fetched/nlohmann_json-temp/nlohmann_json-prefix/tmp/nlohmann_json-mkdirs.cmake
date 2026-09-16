# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json"
  "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json-temp/nlohmann_json-prefix/src/nlohmann_json-build"
  "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json-temp/nlohmann_json-prefix"
  "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json-temp/nlohmann_json-prefix/tmp"
  "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json-temp/nlohmann_json-prefix/src/nlohmann_json-stamp"
  "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json-temp/nlohmann_json-prefix/src"
  "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json-temp/nlohmann_json-prefix/src/nlohmann_json-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json-temp/nlohmann_json-prefix/src/nlohmann_json-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/nlohmann_json-temp/nlohmann_json-prefix/src/nlohmann_json-stamp${cfgdir}") # cfgdir has leading slash
endif()
