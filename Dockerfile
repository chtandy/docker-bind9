FROM ubuntu:18.04
MAINTAINER Andyhuang < cht.andy@gmail.com >

RUN apt-get  update \
  && apt-get install supervisor bind9 -y \
  && rm -rf /var/lib/apt/lists/* && apt-get clean

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/conf.d/supervisord.conf"]
