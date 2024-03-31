# 添加外部库，包括external_lib.cpp
add_library(ExternalLib external_lib.cpp)

# 添加头文件目录
target_include_directories(ExternalLib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
