# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/tight_inclusion-gitclone-lastrun.txt" AND EXISTS "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/tight_inclusion-gitinfo.txt" AND
  "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/tight_inclusion-gitclone-lastrun.txt" IS_NEWER_THAN "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/tight_inclusion-gitinfo.txt")
  message(STATUS
    "Avoiding repeated git clone, stamp file is up to date: "
    "'/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/tight_inclusion-gitclone-lastrun.txt'"
  )
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"
            clone --no-checkout --config "advice.detachedHead=false" --config "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*" "https://github.com/sofa-framework/Tight-Inclusion" "tight_inclusion"
    WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched"
    RESULT_VARIABLE error_code
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/sofa-framework/Tight-Inclusion'")
endif()

execute_process(
  COMMAND "/usr/bin/git"
          checkout "v1.0.6-export-target" --
  WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'v1.0.6-export-target'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion"
    RESULT_VARIABLE error_code
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/tight_inclusion-gitinfo.txt" "/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/tight_inclusion-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/defrost/sofa2/build/external_directories/fetched/tight_inclusion-temp/tight_inclusion-prefix/src/tight_inclusion-stamp/tight_inclusion-gitclone-lastrun.txt'")
endif()
