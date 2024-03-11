vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/MagnetoSensor
    REF "v0.0.4"
    SHA512 cf8cb82115adc85f5ae80b631aafa0699898cfc7a810464ef629f17f055f5aa48192fa4e2b7790c390e5274a2c5ada85aa6d94e16f5cb928739d76634627ed5e
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
