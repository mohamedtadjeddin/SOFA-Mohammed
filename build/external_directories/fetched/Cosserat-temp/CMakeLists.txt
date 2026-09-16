
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            Cosserat
            GIT_REPOSITORY https://www.github.com/SofaDefrost/Cosserat.git
            GIT_TAG v25.12
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/Cosserat
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )