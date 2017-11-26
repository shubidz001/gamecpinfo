#!/bin/bash
apt-get update; apt-get upgrade -y; ap-get dist-upgrade -y
apt-get install build-essential libssl-dev curl nano whois screen wget git zip unzip -y
apt-get install apache2 -y
apt-get install php5 -y
apt-get install -y libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-ming php5-ps
apt-get install -y php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
sudo service apache2 restart
apt-get install mysql-server mysql-client -y
sudo php5enmod mcrypt
sudo a2enmod rewrite
service apache2 restart
apt-get install phpmyadmin -y
