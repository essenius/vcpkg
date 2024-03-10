vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/MagnetoSensor
    REF "e5174a11016d466f50f0d7c736970617c90f3740"
    SHA512 abb179151e9da1b58ee789b4b4c890e997b9bfc39d48f58bb433634bb76265078488bd97efb6f1c9277f678c93b2dfabba3d76074add7f06c9e55f084c2e23b2
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
