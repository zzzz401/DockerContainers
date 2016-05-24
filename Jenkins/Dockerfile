FROM jenkins

USER root

#Adding My Build Tools
RUN apt-get update && apt-get install -y git wget rsync php5 php5-curl curl zip && \
apt-get clean && rm -rf /var/lib/apt/lists/*

USER jenkins

#sudo docker run -d -p 10.1.1.109:80:8080 -e JAVA_OPTS=-Duser.timezone=America/Chicago \
#-v /server/data/jenkinsData:/var/jenkins_home --name jenkins --restart always jenkins;
