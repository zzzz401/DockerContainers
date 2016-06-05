FROM debian:jessie

MAINTAINER Aidan Law afl@aidan-law.com

RUN apt-get update && apt-get install openssl apache2 -y && \
apt-get clean && rm -rf /var/lib/apt/lists/*

#For Mounting in Web Roots and Accessing Log Files
RUN mkdir /data /logs /ssl

#Enable SSL
RUN a2enmod ssl rewrite

COPY foreground /usr/local/bin/

COPY index.html /var/www/html/index.html

COPY 404.html /var/www/html/404.html

WORKDIR /data

EXPOSE 80 443

CMD ["foreground"]
