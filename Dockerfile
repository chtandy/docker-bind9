FROM ubuntu:18.04
MAINTAINER Andyhuang < cht.andy@gmail.com >

RUN apt-get  update \
  && apt-get install supervisor bind9 iputils-ping dnsutils netcat -y \
  && rm -rf /var/lib/apt/lists/* && apt-get clean

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY named.conf /etc/bind/named.conf
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/conf.d/supervisord.conf"]
