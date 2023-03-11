#!/bin/bash

# Stop apache service
sudo systemctl stop apache2

cd /home/ubuntu/SiteApache

# Delete old site files
sudo rm -f /var/www/html/*

# Copy new version of the site
sudo cp -r SiteApache/site/* /var/www/html/

# Start apache service
sudo systemctl start apache2

echo "Site updated successfully"

