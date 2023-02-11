# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF tags/v0.5.0
    SHA512 a22596a5bc146e93a6f3ec7764bc39f3aa79c85758c09ebaed9689fb8c4d7013149399de887579a0ae6eaa480e365dc2b0f69a7413ec81e9dd0c18afb8e17988
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/SafeCString/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
