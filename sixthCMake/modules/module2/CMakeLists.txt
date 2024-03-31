# 模块2 CMakeLists.txt

# 添加模块2的源文件
file(GLOB MODULE2_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
message("CMAKE_CURRENT_BINARY_DIR2 = ${CMAKE_CURRENT_BINARY_DIR}")

# 创建模块2库
add_library(module2 ${MODULE2_SOURCES})

# 链接模块1库到模块2
target_link_libraries(module2 PRIVATE module1)

target_include_directories(module2 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

# 将模块2的头文件添加到安装目录
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION ${ROOT_DIR}/include)

# 将模块2库添加到安装目录
install(TARGETS module2 DESTINATION ${ROOT_DIR}/lib)
