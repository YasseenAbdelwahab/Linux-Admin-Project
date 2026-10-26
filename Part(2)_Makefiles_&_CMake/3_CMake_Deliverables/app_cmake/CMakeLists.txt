cmake_minimum_required(VERSION 3.10)


project(output
	VERSION 1.0
	DESCRIPTION "Main CMake"
	LANGUAGES C)


file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/out)


file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/out/gen)


file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/out/libs)


set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/out/libs)


set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/out/libs)


add_subdirectory(../Modules/caesar_cipher caesar_build)


add_subdirectory(../Modules/xor_cipher xor_build)


set(SOURCES ./app.c)


add_executable(output ${SOURCES})


target_compile_options(output PRIVATE -Wall -Wextra)


target_link_libraries(output PRIVATE caesar xor)
