cmake_minimum_required(VERSION 3.10)
project(MyProject)

include(CTest)
enable_testing()

set(ROOT_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}
)
message("CMAKE_CURRENT_BINARY_DIR_ROOT = ${CMAKE_CURRENT_BINARY_DIR}")

# 添加子目录
add_subdirectory(modules/module1)
add_subdirectory(modules/module2)
add_subdirectory(modules/module3)

# 将项目源文件编译为可执行文件
add_executable(main src/main.cpp)

# 链接模块到可执行文件
target_link_libraries(main PRIVATE module1 module2 module3)
install(TARGETS main RUNTIME DESTINATION ${ROOT_DIR}/bin)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
