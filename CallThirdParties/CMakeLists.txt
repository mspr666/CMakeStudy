# CMakeList.txt: 顶层 CMake 项目文件，在此处执行全局配置
# 并包含子项目。
#
cmake_minimum_required (VERSION 3.8)

project ("CallThirdParties")

aux_source_directory(. DIR_SRCS)

include_directories(${PROJECT_SOURCE_DIR}/thirdParties/include)

link_directories(${PROJECT_SOURCE_DIR}/thirdParties/lib)

# 指定生成目标
add_executable(Demo ${DIR_SRCS})

# 添加链接库
target_link_libraries(Demo MathFunctions)
