# Use an official Nginx runtime as the base image
FROM nginx:latest

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html file to the Nginx document root
COPY index.html /usr/share/nginx/html/

# Expose port 80 for HTTP traffic (the default Nginx port)
EXPOSE 80

# Start the Nginx web server when the container runs
CMD ["nginx", "-g", "daemon off;"]

