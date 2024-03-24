# header-only library

set (VERSION v7.0.4)

vcpkg_download_distfile(
    OUT_FILE
    URLS "https://github.com/bblanchon/ArduinoJson/releases/download/${VERSION}/ArduinoJson-${VERSION}.h"
    FILENAME "ArduinoJson.h"
    SHA512 ab053f57278ae4cf570d2071b422b29ab05f9fc4035894861bae27d60ceecd22ad62ce72c5fa53657b0c33793722e4367dc223b50d7e38c1e4f484f5c8c88151
)

vcpkg_download_distfile(
    OUT_LICENSE_FILE
    URLS "https://raw.githubusercontent.com/bblanchon/ArduinoJson/${VERSION}/LICENSE.txt"
    FILENAME "LICENSE.txt"
    SHA512 dde9f84be2b8f57840637226071f85bc0be5e2d8ca73e84f5b1a7ca5d2ec02c27f40d9ba8edbe65ca86a59bfac16062d0a48d24f4e36dfc010e83bcd8dc32fea
)

file(INSTALL "${OUT_FILE}"  DESTINATION "${CURRENT_PACKAGES_DIR}/include")
vcpkg_install_copyright(FILE_LIST "${OUT_LICENSE_FILE}")
