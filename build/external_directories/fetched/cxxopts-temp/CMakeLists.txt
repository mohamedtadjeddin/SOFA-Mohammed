
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            cxxopts
            GIT_REPOSITORY https://github.com/jarro2783/cxxopts
            GIT_TAG v3.1.1
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/cxxopts
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )