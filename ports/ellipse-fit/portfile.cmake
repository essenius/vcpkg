vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/EllipseFit
    REF "db14e623d323ea3ca9aeb12a5eb0ce784f8e6e85"
    SHA512 d71fe23e115637495262d5f2ff0d4420c5611fdd0ed2b89cad028b46f48f163df347a05235dfbf202752911da8d36b9d61aff01eecd4090a8c092cc77471dbc4
    HEAD_REF main
)

# find git
vcpkg_find_acquire_program(
    GIT
)

get_filename_component(GIT_EXE_PATH ${GIT} DIRECTORY)
vcpkg_add_to_path(${GIT_EXE_PATH})

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

# vcpkg_cmake_config_fixup()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
