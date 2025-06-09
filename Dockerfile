# NGINX a versatile, open-source software primarily used as a web server, and load balancer.
# This tells Docker to use the lightweight Alpine-based Nginx image as the base image.
# Use official Nginx image
FROM nginx:alpine

# Deletes the default HTML files that come with the Nginx image (like index.html).
# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copies all the files from your current project directory (where the Dockerfile is) into the Nginx web root.
# Copy your site content into the Nginx html directory
COPY . /usr/share/nginx/html

# Tells Docker that this container will listen on port 80, which is the default HTTP port.
# Expose port 80
EXPOSE 80

#  This starts the Nginx server and keeps it running in the foreground (daemon off;) so the Docker container doesn’t exit.
# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
