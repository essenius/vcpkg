vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/EllipseFit
    REF "1bea8eef11770fec864a4093eb2d56e7ac39dac3"
    SHA512 0839d5cc0e3b5d9f0515f97603ff24268d31b82cadca9f83bb3399d28fbf9c516499eb9225efd292f715212545625b1d5e40c2b222b9558e87672afc7c4cbec1
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

# vcpkg_cmake_config_fixup()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
