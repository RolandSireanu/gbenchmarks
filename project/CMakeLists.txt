cmake_minimum_required(VERSION 3.1)
project(NoExceptDemo VERSION 1.0)
set(CMAKE_CXX_STANDARD 14)

file(GLOB SOURCES 
    ${CMAKE_CURRENT_LIST_DIR}/src/*)

find_package(benchmark REQUIRED)

add_executable(${CMAKE_PROJECT_NAME} ${SOURCES})
target_include_directories(${CMAKE_PROJECT_NAME}  PUBLIC ${CMAKE_CURRENT_LIST_DIR}/include)
target_link_libraries(${CMAKE_PROJECT_NAME} benchmark::benchmark)