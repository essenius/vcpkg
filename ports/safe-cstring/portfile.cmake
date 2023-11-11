# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF 081e8eb4903ba4191464afedd7306c6eaf2ddac6
    SHA512 240bc8030fc1882a13e493c22a11e4e4ce8b36a1cee5e46c409271fe0d01987265c53e0faabdabf0896d31c9618a3e0d6f190826c37c32513107da0c96eba1f2
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/SafeCString/src/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
