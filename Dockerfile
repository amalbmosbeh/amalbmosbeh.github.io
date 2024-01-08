# Use a lightweight web server image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the content of your local HTML/CSS project to the container
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the web server
CMD ["nginx", "-g", "daemon off;"]
