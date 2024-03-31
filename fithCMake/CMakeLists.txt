cmake_minimum_required(VERSION 3.0.0)
project(VendingMachineProject VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

# 设置C++标准
set(CMAKE_CXX_STANDARD 14)

# 添加源文件和头文件目录
include_directories(include)

add_library(machineLib src/concrete_vending_machine.cpp src/ConcreteProduct.cpp)
add_executable(vending_machine src/main.cpp)
target_link_libraries(vending_machine PUBLIC machineLib)

#设置输出路径
set_target_properties(vending_machine PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin
)

set_target_properties(machineLib PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin
)

# 添加GoogleTest子目录
add_subdirectory(test)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

