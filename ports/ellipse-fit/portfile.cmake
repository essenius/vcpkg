vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/EllipseFit
    REF "v0.2.3"
    SHA512 4cdd25559a84f14deeacc9a7a8dc61c42c0a80ddbcf7652778dc6e2f4d39a511c4cd5ff6f9767098a9d7528049df249b86ae19ca39962b12685b88638d003144
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
