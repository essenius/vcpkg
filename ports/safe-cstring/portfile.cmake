# header-only library

message(STATUS "Adding safe-cstring at source path ${SOURCE_PATH}")

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF "v0.6.3"
    SHA512 367624bf324b2497b563b86380a6642b0f869de3c80cce0fded8f0008522ba44e69d50da149825d027664810357d2e66270c70031f1b35c6d71b651cadd26666
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/src/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
