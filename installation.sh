#!/bin/bash

# Update system packages
sudo apt update && sudo apt upgrade -y

# Install required dependencies
sudo apt install apache2 mariadb-server php php-mysql php-xml php-curl php-ldap -y

# Download and Install GLPI
wget https://github.com/glpi-project/glpi/releases/latest/download/glpi.tgz
tar -xvzf glpi.tgz
sudo mv glpi /var/www/html/

# Set permissions
sudo chown -R www-data:www-data /var/www/html/glpi
sudo chmod -R 755 /var/www/html/glpi

# Restart Apache
sudo systemctl restart apache2

echo "GLPI installation completed. Access it via http://your-server-ip/glpi"
