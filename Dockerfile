# Use official nginx alpine image for lightweight static site hosting
FROM nginx:alpine

# Copy HTML files and assets to nginx html directory
COPY . /usr/share/nginx/html/

# Copy custom nginx configuration if needed (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]