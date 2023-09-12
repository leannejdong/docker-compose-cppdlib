# Build the dynamic linked library

add_library(mylib SHARED mylib.cpp)

# Specify lib  installation dir

install(TARGETS mylib DESTINATION lib)