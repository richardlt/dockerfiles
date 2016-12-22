FROM alpine:3.4

MAINTAINER richard.le.terrier@gmail.com

RUN apk add --update openssl bash

RUN mkdir -p /usr/bin && cd /usr/bin && \
    wget https://github.com/iturgeon/wait-for-it/archive/master.zip && \
    unzip master.zip && \
    rm master.zip && \
    mv wait-for-it-master/wait-for-it.sh . && \
    rm -rf wait-for-it-master