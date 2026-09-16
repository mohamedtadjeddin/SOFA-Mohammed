#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Bindings_SofaImGui" for configuration "Release"
set_property(TARGET Bindings_SofaImGui APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Bindings_SofaImGui PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Python::Python"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/python3/site-packages/./SofaImGui.cpython-312-x86_64-linux-gnu.so"
  IMPORTED_SONAME_RELEASE "SofaImGui.cpython-312-x86_64-linux-gnu.so"
  )

list(APPEND _cmake_import_check_targets Bindings_SofaImGui )
list(APPEND _cmake_import_check_files_for_Bindings_SofaImGui "${_IMPORT_PREFIX}/lib/python3/site-packages/./SofaImGui.cpython-312-x86_64-linux-gnu.so" )

# Import target "SofaImGui" for configuration "Release"
set_property(TARGET SofaImGui APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaImGui PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "nfd::nfd"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaImGui.so.25.12.00"
  IMPORTED_SONAME_RELEASE "libSofaImGui.so.25.12.00"
  )

list(APPEND _cmake_import_check_targets SofaImGui )
list(APPEND _cmake_import_check_files_for_SofaImGui "${_IMPORT_PREFIX}/lib/libSofaImGui.so.25.12.00" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
