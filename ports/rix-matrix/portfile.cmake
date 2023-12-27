#set(VCPKG_BUILD_TYPE debug)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    #REF "${VERSION}"
    REF "c65bd95a467115fb45510f0b3a78426856d5ee72"
    SHA512 c1a102c6b193116cced385f81f2dbaf471f953cd36b51e1f4f7a3502f0acc8e6af52c282833400c553258d9e414d5a7213371710f22301f6017430cf60f13428
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
