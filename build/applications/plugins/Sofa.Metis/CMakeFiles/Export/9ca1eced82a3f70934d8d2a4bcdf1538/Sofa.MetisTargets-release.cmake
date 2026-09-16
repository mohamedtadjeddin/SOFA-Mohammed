#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Sofa.Metis" for configuration "Release"
set_property(TARGET Sofa.Metis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Sofa.Metis PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "metis"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofa.Metis.so.25.12.00"
  IMPORTED_SONAME_RELEASE "libSofa.Metis.so.25.12.00"
  )

list(APPEND _cmake_import_check_targets Sofa.Metis )
list(APPEND _cmake_import_check_files_for_Sofa.Metis "${_IMPORT_PREFIX}/lib/libSofa.Metis.so.25.12.00" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
