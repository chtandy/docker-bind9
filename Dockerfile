FROM ubuntu:18.04
MAINTAINER Andyhuang < cht.andy#gmail.com >
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN apt-get  update \
  && apt-get install supervisor bind9 -y \
  && rm -rf /var/lib/apt/lists/* && apt-get clean
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/conf.d/supervisord.conf"]

