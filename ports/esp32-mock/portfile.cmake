vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/esp32-mock
    REF "v0.1.4"
    SHA512 ae07ce79f41cf4c12648f1f4f8906b39dc5ac87c00df5fdb50e61df8e24af6ae5823133b38c4c337b878d205ad85ce26ea6b3f4068a18a7dca02d86cf36be98e
    HEAD_REF main
)


vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
