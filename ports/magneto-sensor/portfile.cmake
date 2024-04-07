vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/MagnetoSensor
    REF "v0.0.6"
    SHA512 a16346349a43d511b47652a04982e91e3bb57a2a612c673083eac9bf0756638b3d3dc02b75ea768b6872df4ae1e064ab13b2f8d09febf6e4c238613745be53af
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
