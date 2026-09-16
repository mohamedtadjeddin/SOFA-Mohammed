#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libqpOASES" for configuration "Release"
set_property(TARGET libqpOASES APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(libqpOASES PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblibqpOASES.so.3.2"
  IMPORTED_SONAME_RELEASE "liblibqpOASES.so.3.2"
  )

list(APPEND _cmake_import_check_targets libqpOASES )
list(APPEND _cmake_import_check_files_for_libqpOASES "${_IMPORT_PREFIX}/lib/liblibqpOASES.so.3.2" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
