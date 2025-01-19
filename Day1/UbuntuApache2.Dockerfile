# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install apache2
RUN apt-get update && apt-get install -y apache2

# Expose port 80 to the outside world
EXPOSE 80

# Start apache2 service
CMD ["apachectl", "-D", "FOREGROUND"]