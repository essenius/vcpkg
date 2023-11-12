# header-only library

message(STATUS "Adding safe-cstring at source path ${SOURCE_PATH}")

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/safe-cstring
    REF 081e8eb4903ba4191464afedd7306c6eaf2ddac6
    SHA512 d88dfd28af833d8f6b00cf39e457725f17ab6f128ba2b1f86e21c313506d3a2045bcc49dedc12e90966c4b37f2fee27c1e85ffff3456b515f4485561f9827341
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/src/SafeCString.h"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
