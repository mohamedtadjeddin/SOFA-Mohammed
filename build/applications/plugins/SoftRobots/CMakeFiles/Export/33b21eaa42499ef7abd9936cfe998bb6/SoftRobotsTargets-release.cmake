#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SoftRobots" for configuration "Release"
set_property(TARGET SoftRobots APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SoftRobots PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSoftRobots.so.1.0"
  IMPORTED_SONAME_RELEASE "libSoftRobots.so.1.0"
  )

list(APPEND _cmake_import_check_targets SoftRobots )
list(APPEND _cmake_import_check_files_for_SoftRobots "${_IMPORT_PREFIX}/lib/libSoftRobots.so.1.0" )

# Import target "SoftRobotsInverseBindings" for configuration "Release"
set_property(TARGET SoftRobotsInverseBindings APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SoftRobotsInverseBindings PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Python::Python"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/python3/site-packages/Sofa/SoftRobotsInverse.cpython-312-x86_64-linux-gnu.so"
  IMPORTED_SONAME_RELEASE "SoftRobotsInverse.cpython-312-x86_64-linux-gnu.so"
  )

list(APPEND _cmake_import_check_targets SoftRobotsInverseBindings )
list(APPEND _cmake_import_check_files_for_SoftRobotsInverseBindings "${_IMPORT_PREFIX}/lib/python3/site-packages/Sofa/SoftRobotsInverse.cpython-312-x86_64-linux-gnu.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
