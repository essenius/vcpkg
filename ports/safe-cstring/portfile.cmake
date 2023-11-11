# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF 081e8eb4903ba4191464afedd7306c6eaf2ddac6
    SHA512 0
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/SafeCString/src/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
