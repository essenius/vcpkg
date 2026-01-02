vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/esp32-mock
    REF "v0.1.17"
    SHA512 35a13e8882941af2cdfa1594b76e0069fdb2bb5d3a99dbc1259bee14bd5eb21ee58b9319981b7687eeb284f992c87913348636f62d042411b2c9223958348f9b
    HEAD_REF main
)


vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
