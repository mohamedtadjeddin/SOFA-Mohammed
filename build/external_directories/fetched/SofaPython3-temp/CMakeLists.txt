
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            SofaPython3
            GIT_REPOSITORY https://www.github.com/sofa-framework/SofaPython3.git
            GIT_TAG v25.12
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/SofaPython3
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )