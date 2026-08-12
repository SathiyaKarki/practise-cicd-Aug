#!/bin/bash

echo "Starting deployment..."

# Make sure Apache is running
systemctl enable httpd
systemctl restart httpd

# Set ownership of web files
chown -R apache:apache /var/www/html

# Set permissions
chmod -R 755 /var/www/html

echo "Apache restarted successfully."
echo "Deployment completed successfully."

exit 0
