# header-only library

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF 72f1aa130b807fc7c4e2968bbfac584d0f455048
    SHA512 0e58de509461a82c02cd955eb10e34fc1352a739e12422427fbf06e3334e4203ebafe63eb36d8e576a2dcb53b31ef1119d6615878a24ed03e316ad0ebfecdb65
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/SafeCString/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
