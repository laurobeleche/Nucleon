FROM debian:stretch
LABEL maintainer="Nucleon Developers <dev@neon.org>"
LABEL description="Dockerised NucleonCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
