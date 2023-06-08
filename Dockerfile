# Use a base image
FROM gcc:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY hello.c .

# Compile the program
RUN gcc hello.c -o hello

# Expose port 80
EXPOSE 80

# Set the default command to run the program on port 80
CMD ["./hello"]
