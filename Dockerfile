FROM ubuntu:20.04

RUN apt-get update && \ 
    apt-get install -y sudo curl

RUN curl -fL https://getcli.jfrog.io | bash -s v2 && \
    sudo chmod +x jfrog && \
    mv jfrog /usr/bin/jfrog
