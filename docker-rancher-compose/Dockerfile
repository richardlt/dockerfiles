FROM alpine:3.3

MAINTAINER richard.le.terrier@gmail.com

RUN mkdir -p /opt && cd /opt && \
    wget http://releases.rancher.com/compose/v0.8.6/rancher-compose-linux-amd64-v0.8.6.tar.gz
    
RUN cd /opt && tar -zxvf rancher-compose-linux-amd64-v0.8.6.tar.gz && \
    chmod +x /opt/rancher-compose-v0.8.6/rancher-compose && \
    ln -s /opt/rancher-compose-v0.8.6/rancher-compose /usr/bin/rancher-compose 