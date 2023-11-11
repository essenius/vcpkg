# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF 081e8eb4903ba4191464afedd7306c6eaf2ddac6
    SHA512 926a082f55e0f45c377d2ec56dd2ca7e6b568a35e464b58b96c0975bec4a6fa73b67f6caf62bf158a2f846b3e1376715b1836435337e55e8eb1e1c76631a97c3
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/SafeCString/src/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
