FROM debian:9.5

RUN apt-get update && apt-get install -y git ssh zip curl && rm -rf /var/lib/apt/lists/*

ADD ./cds/tools/debpacker/dist/debpacker-linux-amd64 /usr/bin/debpacker