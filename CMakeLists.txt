cmake_minimum_required(VERSION 3.10)
project(multithread)

set(CMAKE_C_STANDARD 99)

add_executable(out src/main.c)
add_executable(file src/fileio/main.c)
add_executable(str3 src/cp/str3.c)
add_executable(str5 src/cp/str5.c)
