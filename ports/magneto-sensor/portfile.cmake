vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/MagnetoSensor
    REF "v0.0.4"
    SHA512 ae024f47e712e12ad44eadd227a1c49666c3b3497d9ea648f8696ed2416afd11692083db5a067d6544252ac5455a16d2283bc4a713e23072a376e9b6c94d9c4f
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
