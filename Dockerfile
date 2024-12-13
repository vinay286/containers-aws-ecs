# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package lists and install the Apache HTTP server package
RUN apt-get update && apt-get install -y apache2

# Copy the index.html file from the Docker build context to the default Apache document root directory in the container
COPY index.html /var/www/html/

# Specify the command to run when the container starts, which starts the Apache HTTP server in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Expose port 80 to allow incoming HTTP traffic to the container
EXPOSE 80
