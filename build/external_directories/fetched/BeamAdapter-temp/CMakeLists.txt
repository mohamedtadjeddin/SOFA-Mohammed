
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            BeamAdapter
            GIT_REPOSITORY https://www.github.com/sofa-framework/BeamAdapter.git
            GIT_TAG v25.12
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/BeamAdapter
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )