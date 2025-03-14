# Update the system packages
sudo apt update && sudo apt upgrade -y

# Install required dependencies
sudo apt install apache2 mariadb-server

# Check status of prequsistes such as apache2 and Mariadb
sudo systemctl status apache2 
sudo systemctl status Mariadb

# Install the required extensions of php
sudo apt install -y vim wget tar php-curl php-zip php-gd php-intl php-intl php-pear php-imagick php-imap php-memcache php-pspell php-tidy php-xmlrpc php-xsl php-mbstring php-ldap php-ldap php-cas php-apcu libapache2-mod-php php-mysql php-bz2

# Login Mysql/Mariadb Server
sudo mysql -uroot -p

# Create Database in Mysql
CREATE DATABASE glpi_db;
CREATE USER glpi_admin@localhost IDENTIFIED BY 'glpi_PWD';
GRANT ALL ON glpi_db.* TO glpi_admin@localhost;
FLUSH PRIVILEGES;
EXIT;

# Change directory 
cd /var/www/html/

# Download and Install GLPI
sudo wget -O glpi.tgz https://github.com/glpi-project/glpi/releases/download/10.0.18/glpi-10.0.18.tgz
sudo tar -xvf glpi.tgz

# Set permissions
sudo chown -R www-data:www-data glpi
sudo chmod -R 755 glpi

# Restart Apache
sudo systemctl restart apache2

echo "GLPI installation completed. Access it via http://18.227.190.214/glpi"
