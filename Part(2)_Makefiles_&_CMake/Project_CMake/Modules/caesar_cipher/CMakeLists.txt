cmake_minimum_required(VERSION 3.10)

project(libcaesar
	VERSION 1.0
	DESCRIPTION "Static Library"
	LANGUAGES C)

add_library(caesar STATIC
	./src/caesar_encrypt.c
	./src/caesar_decrypt.c)

target_include_directories(caesar PUBLIC ./inc)


