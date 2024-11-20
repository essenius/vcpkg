vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/esp32-mock
    REF "v0.1.12"
    SHA512 e1059f3a30e5f7bef1bddbc2fd2a7601647390ef2e56a31423a931553cce03a82abff0ae40a38c722a14a9c27248144b7bb27784f9846bd1fb25da12660c978f
    HEAD_REF main
)


vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
