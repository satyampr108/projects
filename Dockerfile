# Use a base image. For simplicity, we'll use nginx as the web server.
FROM nginx:alpine

# Copy the static HTML files from your local directory to the nginx default html directory.
COPY ./ /usr/share/nginx/EPICNOW/EPICNOWin.html

# Expose port 80. This is the default port for HTTP traffic.
EXPOSE 80

# By default, when you run the container, it will start the nginx server.
CMD ["nginx", "-g", "daemon off;"]
