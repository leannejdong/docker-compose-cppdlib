# Use the official Arch Linux base image
FROM archlinux/base

# Update package lists and install necessary tools
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm base-devel cmake gdb

# Create a working directory for your project
WORKDIR /app

# Copy your project files into the container
COPY . /app

# Build the dynamic linked library and the main program
RUN mkdir build && \
    cd build && \
    cmake .. && \
    make

# Set the default command to run the main program
CMD ["./build/main"]
