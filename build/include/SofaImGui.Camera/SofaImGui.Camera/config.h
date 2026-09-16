#pragma once
#include <sofa/config.h>

#ifdef SOFA_BUILD_SOFAIMGUI_CAMERA
#  define SOFA_TARGET SofaImGui.Camera
#  define SOFAIMGUI_CAMERA_API SOFA_EXPORT_DYNAMIC_LIBRARY
#else
#  define SOFAIMGUI_CAMERA_API SOFA_IMPORT_DYNAMIC_LIBRARY
#endif

namespace sofaimguicamera
{
    constexpr const char* MODULE_NAME = "SofaImGui.Camera";
    constexpr const char* MODULE_VERSION = "1.0";
}
