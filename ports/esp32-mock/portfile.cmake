vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/esp32-mock
    REF "c8388ea024a6efa2a97ddaca9cf8cbf3dcacf9ca"
    SHA512 d562676d5feacac4c1e708a365cab8518f2ef82e0ac9026eefea5179ad6f4db19359c21597494c9a333d79d1a15503b2fd2d6c04fd0a91a7e3e3f8900f0c4ef5
    HEAD_REF main
)


vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

get_cmake_property(_variableNames VARIABLES)

list (SORT _variableNames)
foreach (_variableName ${_variableNames})
    message(STATUS "p: ${_variableName}=${${_variableName}}\n")
endforeach()

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
