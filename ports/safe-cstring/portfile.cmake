# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF 5f73eef218e8e6e95cc1c2969da3561454d5d3b0
    SHA512 7c2c5f4c0e0461a0ca3fdfb2268846cb29401ab546aefe6ab322de69e30d9fea10a2960903e08847e63a3ea5da5413e8b3f85e7dc94cf5da96c68b8935c92c59
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/SafeCString/src/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
