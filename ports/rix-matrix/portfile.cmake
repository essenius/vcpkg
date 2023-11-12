vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    REF "${VERSION}"
    SHA512 3a76fc52d68cab4cceb3199f8a309f6c020bf5316ff75dc56ab3428decacbb489439c2fb0b3b72ca53cc4938aa567e5ba6c88cf1cdf13bf469005f64aafafe1e
    HEAD_REF main
)

vcpkg_cmake_configure( SOURCE_PATH "${SOURCE_PATH}" )

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "rix-matrix")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
