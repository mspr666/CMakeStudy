# 模块1 CMakeLists.txt

# 添加模块1的源文件
file(GLOB MODULE1_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)
message("CMAKE_CURRENT_BINARY_DIR1 = ${CMAKE_CURRENT_BINARY_DIR}")

# 创建模块1库
add_library(module1 ${MODULE1_SOURCES})

target_include_directories(module1 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

# 将模块1的头文件添加到安装目录
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION ${ROOT_DIR}/include)

# 将模块1库添加到安装目录
install(TARGETS module1 DESTINATION ${ROOT_DIR}/lib)
