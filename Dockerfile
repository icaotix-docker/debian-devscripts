FROM debian:buster

RUN apt-get update -y \
    && apt-get install -y devscripts \
    && rm -rf /var/lib/apt/lists/* 
	
RUN useradd -ms /bin/bash builder

USER builder
WORKDIR /home/builder