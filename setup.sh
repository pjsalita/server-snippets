#!/bin/bash

#packages
sudo apt update
sudo apt install -y apache2 php php-cli php-redis php-sqlite3 php-json php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mysql-server redis-server libapache2-mod-php zip unzip curl
sudo ufw allow in "Apache Full"
sudo a2enmod ssl rewrite

#set default homepage files
sudo rm /var/www/html/*
sudo mv default/* /var/www/html

#composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php

#node
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs

#mysql
sudo mysql_secure_installation

#key
if [ $1 ]
then
    ssh-keygen -t rsa -b 4096 -C "${1}"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
fi