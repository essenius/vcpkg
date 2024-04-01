vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/MagnetoSensor
    REF "v0.0.5"
    SHA512 8816e0a2ebd80225149ad585d76508981f8bca68702f098e97847d547635ac952a7c93121b034f7e3c5f52863a81b58b42523f3539f920992ec83d35e9c1e0dd
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
