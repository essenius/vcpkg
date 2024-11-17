#set(VCPKG_BUILD_TYPE debug)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    #REF "${VERSION}"
    REF "v0.2.6"
    SHA512 343deb58378808ef77bb075fe8f2cfc10c9630f60ad6b6ddc3c3d69aa8054a3307f35ce174e3fb8e1c758c0ff5ee0ba84b48dbee7c494034a285f6cf2aea92e6
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
