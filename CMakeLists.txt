cmake_minimum_required(VERSION 3.28)
project(MyModuleProject LANGUAGES CXX)

set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD "2182d7c8-0b56-4f4a-ad26-3d360023bba7")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(main)

# Define your module
target_sources(main
  PUBLIC
    FILE_SET CXX_MODULES FILES
      my_module.cppm
  PRIVATE
    main.cpp
)