FROM debian:sid

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \ 
    git \
    golang-go \
    ghostscript

RUN git clone https://github.com/9fans/plan9port.git /usr/local/plan9

WORKDIR /usr/local/plan9

RUN ./INSTALL
