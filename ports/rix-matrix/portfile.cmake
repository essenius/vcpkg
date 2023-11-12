vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    #REF "${VERSION}"
    REF "804bf1bcbc6b7bb8391d7603df4b96499827c427"
    SHA512 0
    HEAD_REF main
)

# find git
vcpkg_find_acquire_program(
    GIT
)
get_filename_component(GIT_EXE_PATH ${GIT} DIRECTORY)
vcpkg_add_to_path(${GIT_EXE_PATH})


vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "rix-matrix")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
