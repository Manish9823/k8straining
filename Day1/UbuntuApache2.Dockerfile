# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install apache2
RUN apt-get update && apt-get install -y apache2

# Expose port 80 to the outside world
EXPOSE 80

# Start apache2 service
CMD ["apachectl", "-D", "FOREGROUND"]

# Sample Dockerfile commands
# FROM: Specifies the base image
# RUN: Executes a command in the container
# COPY: Copies files from the host machine to the container
# ENV: Sets environment variables
# EXPOSE: Exposes a port to the outside world
# CMD: Specifies the command to run when the container starts
# ENTRYPOINT: Specifies the command to run when the container starts, but allows for additional arguments to be passed in
# USER: Sets the user that the container should run as
# WORKDIR: Sets the working directory for the container
