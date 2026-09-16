
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            imgui
            GIT_REPOSITORY https://github.com/ocornut/imgui
            GIT_TAG 11b3a7c8ca23201294464c7f368614a9106af2a1
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/imgui
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )