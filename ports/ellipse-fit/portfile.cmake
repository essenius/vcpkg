vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/EllipseFit
    REF "c715613abc2c78796980e09514c8d5836fa208d1"
    SHA512 9890453b005c0aab6a2fa2114da758ee58853ea28cbbb2acf4c91a89ce0cbfa45828af9feaa80b9f462aa62d62f5cf226da6ce41f84da5ab258dce05d078e7d6
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
