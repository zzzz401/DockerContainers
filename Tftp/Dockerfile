FROM debian:stretch

MAINTAINER Aidan Law afl@aidan-law.com

RUN apt-get update && apt-get install tftpd-hpa -y && \
apt-get clean && rm -rf /var/lib/apt/lists/*

RUN echo "# /etc/default/tftpd-hpa \n\
TFTP_USERNAME=\"tftp\" \n\
TFTP_DIRECTORY=\"/srv/tftp\" \n\
TFTP_ADDRESS=\"0.0.0.0:69\" \n\
TFTP_OPTIONS=\"-s -vvvv -L\"" > /etc/default/tftpd-hpa

EXPOSE 69/udp

COPY foreground /usr/local/bin/

CMD ["foreground"]
