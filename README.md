Docker lamp ubuntu
==================

Dependencies
------------

- dockerfile/ubuntu

Installed applications
-----------------------

- Ubuntu 14.04
- Apache 2
- php 5.4
- MySQL 5.6

Usage
-----

    docker run -d -p 80:80 -p 3306:3306 -p 22:22 ushios/lamp


#### Access to mysql-server from host.

    mysql -uroot -P 3306 -h 127.0.0.1

You must add remote user before this command.

#### Access to apache2 from host.

    http://localhost:80

