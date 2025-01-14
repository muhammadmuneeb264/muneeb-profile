# Step 1: Use Nginx as the base image
FROM nginx:alpine

# Step 2: Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Step 3: Copy static files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 for the application
EXPOSE 80

# Step 4: Start Nginx
CMD ["nginx", "-g", "daemon off;"]

