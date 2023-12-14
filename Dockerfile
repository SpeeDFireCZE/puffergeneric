# Docker image used by pufferd when a specific image is not specified.
FROM debian:latest
RUN apt update
RUN apt install bzip2
RUN apt install wget
RUN mkdir /server
#RUN useradd -m -d /server pufferd
#WORKDIR /server
#USER pufferd
#ENV HOME /server
