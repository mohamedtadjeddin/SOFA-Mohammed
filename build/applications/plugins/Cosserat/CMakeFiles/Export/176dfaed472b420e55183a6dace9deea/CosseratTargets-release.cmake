#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CosseratBindings" for configuration "Release"
set_property(TARGET CosseratBindings APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(CosseratBindings PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Python::Python"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/python3/site-packages/Cosserat.cpython-312-x86_64-linux-gnu.so"
  IMPORTED_SONAME_RELEASE "Cosserat.cpython-312-x86_64-linux-gnu.so"
  )

list(APPEND _cmake_import_check_targets CosseratBindings )
list(APPEND _cmake_import_check_files_for_CosseratBindings "${_IMPORT_PREFIX}/lib/python3/site-packages/Cosserat.cpython-312-x86_64-linux-gnu.so" )

# Import target "Cosserat" for configuration "Release"
set_property(TARGET Cosserat APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Cosserat PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libCosserat.so.21.12.0"
  IMPORTED_SONAME_RELEASE "libCosserat.so.21.12.0"
  )

list(APPEND _cmake_import_check_targets Cosserat )
list(APPEND _cmake_import_check_files_for_Cosserat "${_IMPORT_PREFIX}/lib/libCosserat.so.21.12.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
