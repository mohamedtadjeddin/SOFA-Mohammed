
        cmake_minimum_required(VERSION 3.22)
        include(ExternalProject)
        ExternalProject_Add(
            IconFontCppHeaders
            GIT_REPOSITORY https://github.com/juliettef/IconFontCppHeaders
            GIT_TAG bf610efb2e5d4361df799d0dfb5ae3977d7bba2e
            SOURCE_DIR /home/defrost/sofa2/build/external_directories/fetched/IconFontCppHeaders
            BINARY_DIR ""
            CONFIGURE_COMMAND ""
            BUILD_COMMAND ""
            INSTALL_COMMAND ""
            TEST_COMMAND ""
            GIT_CONFIG "remote.origin.fetch=+refs/pull/*:refs/remotes/origin/pr/*"
            )