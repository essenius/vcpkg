#set(VCPKG_BUILD_TYPE debug)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    #REF "${VERSION}"
    REF "2e3b278c3279f9828f36aa9d82e83631a7959f46"
    SHA512 40483d01d07ca329102db80344adee23d2fbb4de929ab1bbd0a3f1d361c59fc6809ed8216ab8ff8394bf3ce13771b9a5fde8cd0617368d22287750abb1405e13
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
