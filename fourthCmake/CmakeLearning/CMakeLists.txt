# CMakeList.txt: 顶层 CMake 项目文件，在此处执行全局配置
# 并包含子项目。

# 指定CMake的最低版本要求
cmake_minimum_required(VERSION 3.10)

# 项目名称和版本号
project(MyComplexProject VERSION 1.0)

# 设置可执行文件的生成目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/bin")
# 添加可执行文件，包括main.cpp
add_executable(MyApp main.cpp)

# 添加头文件目录
target_include_directories(MyApp PRIVATE ${CMAKE_SOURCE_DIR}/include)

# 添加子目录，构建自定义库和外部库
add_subdirectory(src)
add_subdirectory(thirdparty/external_library)

# 链接自定义库到可执行文件
target_link_libraries(MyApp PRIVATE MyLib ExternalLib)

