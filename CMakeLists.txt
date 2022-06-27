cmake_minimum_required(VERSION 3.22)
project(Whirlwind)

include(FetchContent)

set(CMAKE_CXX_STANDARD 23)

include_directories(.
        ./src
        /usr/include
        )

link_directories(/usr/lib/aarch64-linux-gnu)

add_executable(Whirlwind main.cpp)

target_link_libraries(Whirlwind PRIVATE
        sqlite3
        fmt)

#######################################################################
#   Test targets
#######################################################################
add_custom_target(tests)
include(FetchContent)
FetchContent_Declare(
        googletest
        URL https://github.com/google/googletest/archive/refs/tags/release-1.11.0.zip
)
enable_testing()
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)
include_directories(.
        ./src
        )
add_executable(league_test
        src/domain/league/League.cpp
        ./tests/league.cpp) # Note: without 'ALL'
target_link_libraries(league_test
        gtest
        gtest_main)
include(GoogleTest)
gtest_discover_tests(league_test)

