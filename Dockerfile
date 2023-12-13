# Docker image used by pufferd when a specific image is not specified.
FROM debian:latest
RUN useradd -m -d /server pufferd
WORKDIR /server


USER pufferd
ENV HOME /server
