vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO richard-vock/sqlite_store
    REF 03349150c12a4fcb024afbcf8cab7ec476899352
    SHA512 5362caf45b980b590a8172dfbc3949a2d5d242b2e8c6ea373f178ad5fc0eb5b92c6818158ed8cb1fd856f22d5a9ae4220e7234cf78f3273b8a2b9988fa7caa17
    HEAD_REF main
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
    INSTALL "${SOURCE_PATH}/LICENSE"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
    RENAME copyright)
