#!/bin/bash
rm -Rf /opt/steamcmd/
case "`lsb_release -is`" in
     Ubuntu)
             apt-get update; apt-get upgrade -y
             apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32gcc1 proftpd screen wget git curl -y
             apt-get install ia32-libs -y
             cd /opt
             mkdir steamcmd && cd steamcmd/
             clear
             curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -
             ./steamcmd.sh +quit
             apt-get install apache2 -y
             apt-get install php5 -y
             apt-get install -y libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-ming php5-ps
             apt-get install -y php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
             service nginx stop
             service apache2 start
             service proftpd start
             mkdir -p /var/www/html/modules/servers/licensing/
             cd /var/www/html/modules/servers/licensing/
             wget https://raw.githubusercontent.com/ch0here/GameCP/master/remote.php
             chmod -R 777 /var/www/html/
             chmod -R 777 /var/www/html/modules
             chmod -R 777 /var/www/html/modules/servers
             chmod -R 777 /var/www/html/modules/servers/licensing
             chmod -R 777 /var/www/html/modules/servers/licensing/remote.php
             chmod +x ~/gcp.sh
             cd ~/
             ./gcp.sh
             echo "Done"
             rm -Rf ~/cl.sh
             rm -Rf ~/gcp.sh
     ;;
     CentOS)
             yum -y update
             yum -y upgrade
             yum -y install epel-release
             yum -y install glibc libstdc++ screen proftpd nano wget curl
             yum -y install glibc.i686 libgcc.x86_64
             service proftpd start
             cd /opt
             mkdir steamcmd
             cd steamcmd/
             curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -
             clear
             ./steamcmd.sh +quit
             clear
             yum -y install httpd
             yum -y install php
             yum -y install php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap curl curl-devel
             clear
             systemctl start httpd.service
             systemctl enable httpd.service
             service httpd stop
             service httpd start
             mkdir -p /var/www/html/modules/servers/licensing/
             cd /var/www/html/modules/servers/licensing/
             wget https://raw.githubusercontent.com/ch0here/GameCP/master/remote.php
             chmod -R 777 /var/www/html/
             chmod -R 777 /var/www/html/modules
             chmod -R 777 /var/www/html/modules/servers
             chmod -R 777 /var/www/html/modules/servers/licensing
             chmod -R 777 /var/www/html/modules/servers/licensing/remote.php
             clear
             service apache2 restart
             cd ~/
             chmod +x ~/gcp.sh
             ./gcp.sh
             echo "Done."
             rm -Rf ~/cl.sh
             rm -Rf ~/gcp.sh
     ;;
esac
