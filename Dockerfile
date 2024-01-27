# Docker image used by pufferd when a specific image is not specified.
FROM debian:latest
RUN apt update
RUN apt install bzip2
RUN apt upgrade
RUN dpkg --add-architecture i386
RUN apt update
RUN apt install steamcmd
#RUN apt-get -y install wget
#RUN mkdir /server
#RUN chmod 777 -R /server
#RUN useradd -m -d /server pufferd
#WORKDIR /server
#USER pufferd
#ENV HOME /server
