#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Bindings_SofaGLFW" for configuration "Release"
set_property(TARGET Bindings_SofaGLFW APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Bindings_SofaGLFW PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Python::Python"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/python3/site-packages/./SofaGLFW.cpython-312-x86_64-linux-gnu.so"
  IMPORTED_SONAME_RELEASE "SofaGLFW.cpython-312-x86_64-linux-gnu.so"
  )

list(APPEND _cmake_import_check_targets Bindings_SofaGLFW )
list(APPEND _cmake_import_check_files_for_Bindings_SofaGLFW "${_IMPORT_PREFIX}/lib/python3/site-packages/./SofaGLFW.cpython-312-x86_64-linux-gnu.so" )

# Import target "SofaGLFW" for configuration "Release"
set_property(TARGET SofaGLFW APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGLFW PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGLFW.so.25.12.00"
  IMPORTED_SONAME_RELEASE "libSofaGLFW.so.25.12.00"
  )

list(APPEND _cmake_import_check_targets SofaGLFW )
list(APPEND _cmake_import_check_files_for_SofaGLFW "${_IMPORT_PREFIX}/lib/libSofaGLFW.so.25.12.00" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
