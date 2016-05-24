#!/bin/bash
#1st Arg: Pass the NIC IP that Postfix should Run On
#2nd Arg: Hostname of the Mail Server
docker run -d --name postfix -p $1:25:25 --restart always postfix:latest $2

