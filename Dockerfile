# FROM ubuntu
FROM dockerfile/ubuntu

# install packages
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install supervisor
RUN apt-get -y install openssh-server
RUN apt-get -y install apache2
RUN apt-get -y install php5
RUN apt-get -y install mysql-server

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 80
CMD ["/usr/bin/supervisord"]
