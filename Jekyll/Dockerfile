FROM debian:jessie

MAINTAINER Aidan Law a-law@fweco.net

RUN apt-get update && apt-get install ruby-full ruby-dev make gcc -y

RUN gem install jekyll pygments.rb

RUN apt-get remove make gcc -y && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /data

WORKDIR /data

CMD jekyll build --watch .

#sudo docker run -d --name jekyll --restart always -v /server/data/jekyllData:/data jekyll
