
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            simpleini
            GIT_REPOSITORY https://github.com/brofield/simpleini
            GIT_TAG 09c21bda1dc1b578fa55f4a005d79b0afd481296
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/simpleini
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )