FROM debian:jessie

MAINTAINER Aidan Law a-law@fweco.net

RUN apt-get update && apt-get install openssl apache2 -y && \
apt-get clean && rm -rf /var/lib/apt/lists/*

#For Mounting in Web Roots and Accessing Log Files
RUN mkdir /data /logs /ssl

#Enable SSL
RUN a2enmod ssl rewrite

COPY apache2.conf /etc/apache2/apache2.conf

COPY vhosts.conf /etc/apache2/sites-enabled/vhosts.conf

COPY foreground /usr/local/bin/

WORKDIR /data

EXPOSE 80 443

CMD ["foreground"]
