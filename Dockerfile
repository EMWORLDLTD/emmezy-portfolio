# Use the official lightweight Nginx image to serve static files
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio files to the Nginx html directory
COPY . /usr/share/nginx/html/

# Rename the final merged file to index.html so it loads by default when visiting the root site URL
RUN mv "/usr/share/nginx/html/option_merged_timeline_grain.html" /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
