# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF 081e8eb4903ba4191464afedd7306c6eaf2ddac6
    SHA512 56789654664097b790fbcc77587e599e3d6e92f26b32019e034fb6ea9eeb6c4a18759bbfbdebc9200359d96cf157cce7b6c6f86a42f670e168c2ade3d826b48a
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/SafeCString/src/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
