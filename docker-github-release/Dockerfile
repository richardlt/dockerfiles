FROM alpine:3.4

WORKDIR /usr/src/workdir

RUN apk update && apk add openssl ca-certificates

ENV VERSION v0.6.2

RUN mkdir -p /usr/bin && cd /usr/bin && \
    wget https://github.com/aktau/github-release/releases/download/$VERSION/linux-amd64-github-release.tar.bz2 && \
    tar xfvj linux-amd64-github-release.tar.bz2 && rm linux-amd64-github-release.* && \
    mv bin/linux/amd64/github-release . && rm -rf bin