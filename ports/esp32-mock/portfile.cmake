vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/esp32-mock
    #REF "${VERSION}"
    REF "a47a72e48f6668d452e63a599580e70a66c44444"
    SHA512 0
    HEAD_REF main
)

# find git
#vcpkg_find_acquire_program(
#    GIT
#)
#get_filename_component(GIT_EXE_PATH ${GIT} DIRECTORY)
#vcpkg_add_to_path(${GIT_EXE_PATH})

vcpkg_cmake_configure( 
    SOURCE_PATH "${SOURCE_PATH}" 
)

#get_cmake_property(_variableNames VARIABLES)
#list (SORT _variableNames)
#foreach (_variableName ${_variableNames})
#    message(STATUS "${_variableName}=${${_variableName}}")
#endforeach()

vcpkg_cmake_install()

#vcpkg_cmake_config_fixup()

#vcpkg_copy_pdbs()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")