# Use an official Nginx base image
FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the local HTML, CSS, JavaScript, and image files to the container
COPY index.html /usr/share/nginx/html/
COPY calc.css /usr/share/nginx/html/
COPY calc.js /usr/share/nginx/html/
COPY calc.1.jpg /usr/share/nginx/html/

# Expose port 80 (default for Nginx)
EXPOSE 80
