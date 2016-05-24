#!/bin/bash
docker build -t postfix . && docker tag postfix:latest postfix:2.11.3-1
