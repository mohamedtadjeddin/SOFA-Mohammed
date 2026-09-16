
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            nfd
            GIT_REPOSITORY https://github.com/btzy/nativefiledialog-extended
            GIT_TAG v1.2.1
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/nfd
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )