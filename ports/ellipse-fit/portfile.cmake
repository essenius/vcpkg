vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/EllipseFit
    REF "b29ac47abeabea440a4fa0ae0a67b854a98cbe88"
    SHA512 70c588b278816b7c79dcf32c9cb537d2bf099902d918a2aad7a37c70fb029487121cb109abdcecbf08bcade0941ec9e3020722a9bbbdeb1e912cf5332e1d0dd2
    HEAD_REF main
)

# find git

# vcpkg_find_acquire_program(
#    GIT
#)

# get_filename_component(GIT_EXE_PATH ${GIT} DIRECTORY)
# vcpkg_add_to_path(${GIT_EXE_PATH})

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

vcpkg_cmake_install()

# vcpkg_cmake_config_fixup()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
