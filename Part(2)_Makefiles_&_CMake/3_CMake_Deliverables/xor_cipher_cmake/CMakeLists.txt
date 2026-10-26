cmake_minimum_required(VERSION 3.10)

project(libxor
	VERSION 1.0
	DESCRIPTION "Dynamic Library"
	LANGUAGES C)

add_library(xor SHARED
	./src/xor_encrypt.c
	./src/xor_decrypt.c)

target_include_directories(xor PUBLIC ./inc)
