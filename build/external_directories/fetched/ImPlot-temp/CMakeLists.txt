
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            ImPlot
            GIT_REPOSITORY https://github.com/epezent/implot
            GIT_TAG 18c72431f8265e2b0b5378a3a73d8a883b2175ff
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/ImPlot
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )