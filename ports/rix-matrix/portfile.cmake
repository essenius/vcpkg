#set(VCPKG_BUILD_TYPE debug)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO essenius/Matrix
    #REF "${VERSION}"
    REF "26db113c6cdfaf66d8d25b49b7715f45f8efa1a7"
    SHA512 495d10639ef611dd41ab2589a7e4a67e7f02691fbb96742eb3e2e5a85efb8cfb4382f95c0cfdc98e238739666745568363f43b1a8b7ba2db5c12858147b7ae0e
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
