#!/bin/bash

# Stop apache service
sudo systemctl stop apache2

# Delete old site files
sudo rm -f /var/www/html/*

# Update index.html with new version
sudo cp site/index.html /var/www/html/

# Start apache service
sudo systemctl start apache2

echo "Site updated successfully"

