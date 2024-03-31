# 添加自定义库，包括mylib.cpp
add_library(MyLib mylib.cpp)

# 添加头文件目录
target_include_directories(MyLib PRIVATE ${CMAKE_SOURCE_DIR}/include)
