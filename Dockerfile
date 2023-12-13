# Docker image used by pufferd when a specific image is not specified.
FROM debian:latest
RUN useradd -m -d /server pufferd
WORKDIR /server
RUN apt update
RUN apt install bzip2
RUN apt install wget

USER pufferd
ENV HOME /server
