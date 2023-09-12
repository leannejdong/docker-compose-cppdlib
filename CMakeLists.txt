cmake_minimum_required(VERSION 3.10)
project(my_dlib)
set(CMAKE_CXX_STANDARD 20)

# build the library
add_library(mylib SHARED lib/mylib.cpp)

# create an exercutable for the main program
add_executable(main src/main.cpp)

# link the executable with the library
target_link_libraries(main PRIVATE mylib)
