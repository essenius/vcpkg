#set(VCPKG_BUILD_TYPE debug)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    #REF "${VERSION}"
    REF "v0.2.7"
    SHA512 36023da59ea98996c09c5cb67810143b668e246cd4e28d3874dff260d1ed4cdd3b75ed6ce3b600dca9008c9664ed688974bb1f262ee735831700444fc8c80c69
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
