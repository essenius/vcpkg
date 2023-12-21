vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/esp32-mock
    REF "07307e776ecec38746623ad6ff6d7034f2a02a52"
    SHA512 38c3f68c838e7996bb328cb69deb44e633dfbcebbbe586babe8d7e05e1ee73109598816d59d096f0146869c1e08e86831f5533f6a9ad0f090817e42596d2166d
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")