
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            tight_inclusion
            GIT_REPOSITORY https://github.com/sofa-framework/Tight-Inclusion
            GIT_TAG v1.0.6-export-target
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/tight_inclusion
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )