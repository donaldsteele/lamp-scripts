#!/bin/bash

echo "Creating a vhost for $1 with a webroot in $HOME/www/$1/public/"
cp /etc/apache2/sites-available/template-pub /etc/apache2/sites-available/$1.conf


sed -i 's/template/'$1'/g' /etc/apache2/sites-available/$1.conf

mkdir -p /var/vhosts/$1/public
mkdir -p /var/vhosts/$1/restricted


a2ensite $1
service apache2 reload


echo "Done, please browse to http://$(grep ServerName /etc/apache2/sites-available/$1.conf | grep -v localhost | sed -n -e 's/^.*ServerName //p') to check!"
