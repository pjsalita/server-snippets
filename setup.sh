#!/bin/bash

#packages
sudo apt update
sudo apt install -y apache2 php php-cli php-redis php-sqlite3 php-json php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath mysql-server redis-server libapache2-mod-php zip unzip curl
sudo ufw allow in "Apache Full"
sudo a2enmod ssl rewrite headers

#set default homepage files
sudo mv default/* /var/www/html/
sudo mv sites/000-default.conf /etc/apache2/sites-available/000-default.conf

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

sudo systemctl restart apache2

ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo "###################################################
## Setup complete!
## Now point your domains to your public IP using A Record.
## Your public IP is: ${ip}
###################################################"