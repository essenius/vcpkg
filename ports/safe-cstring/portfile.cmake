# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF 
    SHA512 
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/SaveCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
