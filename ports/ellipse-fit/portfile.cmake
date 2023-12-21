vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/EllipseFit
    REF "1346abb0b40705c5a1efec2ee9ed6dd0eb1db3d9"
    SHA512 4956c8d326e18b5c95a155241a8e9d7bef16af899a7370a883ff4535dc092efd38b405956f3450d58aeb47b86e719ceaafe609baa8ea316f2cdbbb12ee21a235
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
