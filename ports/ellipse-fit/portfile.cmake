vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/EllipseFit
    REF "e37dad17fb13833b48072228ae7abe40df17ac36"
    SHA512 e32c2a3912ed1972ce21f883b0d9fa5b3e97d1432555f58a7b963af19e499ae0cc72d3338f3bdf680cfc91b20db6ebb99c67df1186503c7f3696eea40c4091cf
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
