cmake_minimum_required(VERSION 3.22)
project(Whirlwind)

include(FetchContent)

set(CMAKE_CXX_STANDARD 23)

include_directories(.
        /usr/include
        /Users/bertrandbegouin/Library/Caches/JetBrains/CLion2022.1/.docker/2022_1/Docker/whirlwind_backend_latest/usr/include
        )

link_directories(/usr/lib/aarch64-linux-gnu)

add_executable(Whirlwind main.cpp)

target_link_libraries(Whirlwind PRIVATE
        sqlite3)

target_link_libraries(Whirlwind PRIVATE
        sqlite3
        fmt)

