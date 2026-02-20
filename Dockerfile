# Use official Apache HTTPD image
FROM httpd:2.4

# Remove default Apache website
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy our custom website into Apache directory
COPY website/ /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80
