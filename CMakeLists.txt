cmake_minimum_required(VERSION 3.10)
project(FactoryExample)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)


add_library(Factory SHARED Factory.cpp)


add_executable(FactoryExample Factory.cpp)
target_link_libraries(FactoryExample PRIVATE Factory)

enable_testing()
add_executable(FactoryExampleTests test.cpp)
target_link_libraries(FactoryExampleTests Factory)
add_test(NAME FactoryExampleTests COMMAND FactoryExampleTests)
