# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy a simple HTML file to the Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

