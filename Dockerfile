FROM ubuntu

MAINTAINER rom.chenard@gmail.com

RUN apt-get -y update 
#no warning : timezone
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git

#ADD static-website-example /var/www/html
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/cloudacademy/static-website-example.git /var/www/html


EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

