# tests/CMakeLists.txt
set(GTEST_DIR "E:/iLearing/thirdParty/googletest/include")
set(GTEST_LIB "E:/iLearing/thirdParty/googletest/lib")

add_executable(run_tests
    test_vending_machine.cpp
    test_env_machine.cpp
)
target_include_directories(run_tests PUBLIC ${GTEST_DIR})
target_link_directories(run_tests PUBLIC ${GTEST_LIB})
target_link_libraries(run_tests machineLib libgtest_main.a libgtest.a)

set_target_properties(run_tests PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin
)
