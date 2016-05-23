FROM jenkins

USER root

#Adding My Build Tools
RUN apt-get update && apt-get install git wget rsync php5 php5-curl curl zip && \
apt-get clean && rm -rf /var/lib/apt/lists/*

USER jenkins
