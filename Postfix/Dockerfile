FROM debian:stretch

MAINTAINER Aidan Law afl@aidan-law.com

RUN apt-get update
RUN apt-get install postfix rsyslog libsasl2-modules -y

ADD conf/main.cf /
ADD conf/startservices.sh /
RUN chmod +x startservices.sh

ENTRYPOINT ["/startservices.sh"]
