FROM alpine:3.4

MAINTAINER richard.le.terrier@gmail.com

WORKDIR /usr/src/workdir

ENV VERSION v0.12.1

RUN cd /usr/bin && \
    wget http://releases.rancher.com/compose/$VERSION/rancher-compose-linux-amd64-$VERSION.tar.gz && \
    tar -zxvf rancher-compose-linux-amd64-$VERSION.tar.gz && \
    rm rancher-compose-linux-amd64-$VERSION.tar.gz && \
    mv rancher-compose-$VERSION/rancher-compose . && \
    rm -rf rancher-compose-$VERSION