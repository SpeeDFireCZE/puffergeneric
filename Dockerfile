# Docker image used by pufferd when a specific image is not specified.
FROM debian:latest
RUN apt update
RUN apt install bzip2

#RUN useradd -m -d /serverpufferd
#WORKDIR /server
#USER pufferd
#ENV HOME /server
