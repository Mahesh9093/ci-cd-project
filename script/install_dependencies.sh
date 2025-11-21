#!/bin/bash
set -e

echo "Installing dependencies..."

# Update package lists
sudo apt-get update -y

# Install Apache if not installed
if ! command -v apache2 >/dev/null 2>&1; then
    echo "Apache not found. Installing..."
    sudo apt-get install -y apache2
fi

# Enable Apache
sudo systemctl enable apache2

# Restart Apache
sudo systemctl restart apache2

# Clean old files in /var/www/html
sudo rm -rf /var/www/html/*

echo "Dependencies installed successfully."
