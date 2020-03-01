cmake_minimum_required(VERSION 3.15)
project(todo)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-Ofast)

add_executable(todo main.cxx)