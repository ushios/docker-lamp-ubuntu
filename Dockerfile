# FROM ubuntu:14.04
FROM dockerfile/ubuntu
MAINTAINER Ushio Shugo <ushio.s@gmail.com>

# update repositories
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

# install packages
ADD ./packages.sh /tmp/packages.sh
RUN chmod 755 /tmp/packages.sh
RUN /tmp/packages.sh
RUN rm -f /tmp/packages.sh

# middleware settings
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf


# EXPOSE 22 80 3306

CMD ["/usr/bin/supervisord"]
