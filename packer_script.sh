#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2 > /tmp/apache.log
hostnamectl set-hostname dockerized_packer
echo "<p>Apache service is running. This is host: </p>" > /var/www/html/index.html
hostname >> /var/www/html/index.html
sudo service apache2 restart
