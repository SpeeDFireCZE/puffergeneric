# Docker image used by pufferd when a specific image is not specified.
FROM debian:latest
RUN apt update
RUN apt install bzip2
RUN apt upgrade
RUN dpkg --add-architecture i386
RUN apt update
RUN apt install lib32gcc-10-dev 
RUN apt install lib32stdc++6 
RUN apt install libc6-i386 
RUN apt install libcurl4-gnutls-dev:i386 
RUN apt install libsdl2-2.0-0:i386
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar -xvzf steamcmd_linux.tar.gz
RUN ./steamcmd.sh +quit
#RUN apt-get -y install wget
#RUN mkdir /server
#RUN chmod 777 -R /server
#RUN useradd -m -d /server pufferd
#WORKDIR /server
#USER pufferd
#ENV HOME /server
