#set(VCPKG_BUILD_TYPE debug)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    #REF "${VERSION}"
    REF "v0.2.5"
    SHA512 4f0a3bd24ee363e55fab1cca0686806e4111cdf062f52f2d97d2def7960cca020474f10b774c72b4bb4ee73f2faf87f65b096bdec1b770958c4409ed13485d77
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

#vcpkg_cmake_config_fixup()

#vcpkg_copy_pdbs()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
