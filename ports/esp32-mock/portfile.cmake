vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/esp32-mock
    REF "v0.1.20"
    SHA512 7814582a96db1e6439de5b8693a5ba64ac1527e4d07a623b1a94986dea24c2c34db72d268f9cae9d8bf769b08db671afcaf760bfc2b3d034d07548ffd7593930
    HEAD_REF main
)


vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
