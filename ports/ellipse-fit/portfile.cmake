vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/EllipseFit
    REF "v0.2.6"
    SHA512 a4541763086837d933a2c1e05a3a185ac2147cdc244cccb3bbd310897e50e2a22d6569285043292b8321427255fbc531a4f0b282fbd2abc935ce4e15cb9f7db9
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
