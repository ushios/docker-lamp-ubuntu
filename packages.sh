#/bin/bash

DEBIAN_FRONTEND=noninteractive apt-get -y install supervisor \
openssh-server \
apache2 \
mysql-server-5.6 \
php5 \
libapache2-mod-php5 \
php5-mysql