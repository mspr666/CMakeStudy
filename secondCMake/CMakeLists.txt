cmake_minimum_required(VERSION 3.8)

project(FirstDemo)

include_directories(swap.h)

add_executable(main main.cpp swap.cpp)