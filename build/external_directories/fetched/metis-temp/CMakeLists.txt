
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            metis
            GIT_REPOSITORY https://github.com/sofa-framework/METIS
            GIT_TAG v5.2.1-ModernInstall
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/metis
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )