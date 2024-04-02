#FROM debian:stretch
FROM ubuntu:latest

RUN  apt-get update -y && apt-get upgrade -y && apt-get install -y minidlna
COPY files/run.sh /run.sh

ENTRYPOINT ["/run.sh"]
