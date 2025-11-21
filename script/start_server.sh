#!/bin/bash
set -e

echo "Starting Apache server..."

sudo systemctl start apache2
sudo systemctl restart apache2

echo "Server started successfully."
