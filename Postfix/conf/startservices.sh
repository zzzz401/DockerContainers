#!/bin/bash
cp /main.cf /etc/postfix/main.cf
/bin/echo "Adding the domain ${1} to postfix main.cf config.";
echo "myhostname = ${1}" >> /etc/postfix/main.cf
sh /etc/init.d/rsyslog start
sh /etc/init.d/postfix start
sleep 20;
tail -f /var/log/mail.log
