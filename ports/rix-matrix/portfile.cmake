#set(VCPKG_BUILD_TYPE debug)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    #REF "${VERSION}"
    REF "9d6a5000702752be359487433646e421f66854f2"
    SHA512 292339cd65f2fed452416c4f452b799870d051aee4eb01c2871fde5f418923b68b3b2fe524611e9fe67fb0499081a00b64d4bc286df5147a09ba8df99c9e6433
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
