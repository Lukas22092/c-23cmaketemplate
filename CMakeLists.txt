cmake_minimum_required(VERSION 3.30)


set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD "451f2fe2-a8a2-47c3-bc32-94786d8fc91b") 
project(MyModuleProject LANGUAGES CXX)

set(CMAKE_CXX_MODULE_STD 1)

set(CMAKE_CXX_MODULE_STD_METADATA_FILE "${CMAKE_CURRENT_SOURCE_DIR}/libc++.modules.json")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)



add_executable(main)

target_sources(main
  PUBLIC
    FILE_SET CXX_MODULES FILES
      my_module.cppm
  PRIVATE
    main.cpp
)
