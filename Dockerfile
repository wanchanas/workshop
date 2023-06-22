# Use a base image
FROM nginx

# Copy the static website files to the default Nginx public directory
COPY ./index.html /usr/share/nginx/html/index.html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]