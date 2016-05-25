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

sudo docker run -d --name apache --restart always -p 10.1.1.100:80:80 -p 10.1.1.100:443:443 -v \
/server/data/jekyllData/_site:/data/aidan-law.com -v /server/data/apacheLogs:/logs -v /server/containers/Apache/apache2.conf:/etc/apache2/apache2.conf \
-v /server/containers/Apache/vhosts.conf:/etc/apache2/sites-enabled/vhosts.conf -v /server/data/letsEncrypt/aidan-law.com:/ssl apache
