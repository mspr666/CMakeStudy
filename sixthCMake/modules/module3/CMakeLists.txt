# 模块3 CMakeLists.txt

# 包含模块3的头文件目录
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

# 添加模块3的源文件
file(GLOB MODULE3_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
message("CMAKE_CURRENT_BINARY_DIR3 = ${CMAKE_CURRENT_BINARY_DIR}")

# 创建模块3库
add_library(module3 ${MODULE3_SOURCES})

# 链接模块1和模块2库到模块3
target_link_libraries(module3 PRIVATE module1 module2)

# 将模块3的头文件添加到安装目录
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION ${ROOT_DIR}/include)

# 将模块3库添加到安装目录
install(TARGETS module3 DESTINATION ${ROOT_DIR}/lib)
