vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/esp32-mock
    REF "58e705f92beacc46be3f262f855de049be392145"
    SHA512 dab6886a5682300c72ac0ddb6fe1cb278d6abf34864d2b483f265e7efdbc57fee170819300b7e41bd4f79e7cc7cad65d2cd01220038c0e7ffe010b1db59f4617
    HEAD_REF main
)

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")