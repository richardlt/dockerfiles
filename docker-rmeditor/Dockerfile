FROM richardleterrier/ubuntu

MAINTAINER richard.le.terrier@gmail.com

ADD ./rmeditor.start.sh /opt/rmeditor.start.sh
ADD ./rmeditor.supervisord.conf /etc/supervisor/conf.d/rmeditor.supervisord.conf

RUN apt-get update &&\
    apt-get install -y unzip

RUN cd /opt &&\
    mkdir nodejs &&\
    cd nodejs &&\
    wget https://nodejs.org/dist/v4.1.2/node-v4.1.2-linux-x64.tar.gz &&\
    tar xvf node-v4.1.2-linux-x64.tar.gz &&\
    ln -s node-v4.1.2-linux-x64 current

RUN cd /opt &&\
    ls &&\
    mkdir rmeditor &&\
    cd rmeditor &&\
    wget https://github.com/sifxtreme/realtime-markdown-viewer/archive/master.zip &&\
    unzip master.zip &&\
    ln -s realtime-markdown-viewer-master current

RUN cd /opt/rmeditor/current/ &&\
    /opt/nodejs/current/bin/npm install

RUN cd /opt/rmeditor/current/ &&\
    sed -i '/redisClient.auth/d' server.js

RUN chmod +x /opt/rmeditor.start.sh

EXPOSE 8000

CMD /opt/rmeditor.start.sh
