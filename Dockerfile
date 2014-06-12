# FROM ubuntu
FROM dockerfile/ubuntu
MAINTAINER Ushio Shugo <ushio.s@gmail.com>

# update repositories
RUN apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

# install packages
RUN apt-get -y install supervisor
RUN apt-get -y install openssh-server
RUN apt-get -y install apache2
RUN apt-get -y install mysql-server
RUN apt-get -y install php5
RUN apt-get -y install libapache2-mod-php5
RUN apt-get -y install php5-mysql

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 80 3306

CMD ["/usr/bin/supervisord"]
