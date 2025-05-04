cmake_minimum_required(VERSION 3.10)
project(OpenGL-Template)

set(CMAKE_CXX_STANDARD 17)

include_directories(include)

add_executable(build.exe
    src/main.cpp
    src/glad.c
)

target_link_libraries(build
    "${CMAKE_SOURCE_DIR}/lib/libglfw3dll.a"
    opengl32
    gdi32
)


