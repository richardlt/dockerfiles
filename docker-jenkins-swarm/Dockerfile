FROM richardleterrier/ubuntu

MAINTAINER richard.le.terrier@gmail.com

RUN mkdir -p /opt/java && \
	cd /opt/java && \
	wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u73-b02/jdk-8u73-linux-x64.tar.gz"

RUN mkdir -p /opt/java && \
	cd /opt/java && \
	tar -xvf jdk-8u73-linux-x64.tar.gz && \
	ln -s /opt/java/jdk1.8.0_73/bin/java /usr/bin/java

RUN mkdir -p /opt/swarm && \
	cd /opt/swarm && \
	wget http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/2.0/swarm-client-2.0-jar-with-dependencies.jar

RUN apt-get update && \
	apt-get install -y git xz-utils

RUN mkdir -p /opt/node && \
	cd /opt/node && \
	wget https://nodejs.org/dist/v4.2.6/node-v4.2.6-linux-x64.tar.xz && \
	tar -xvf node-v4.2.6-linux-x64.tar.xz

env PATH $PATH:/opt/node/node-v4.2.6-linux-x64/bin

RUN npm install -g bower gulp gulp-cli grunt grunt-cli

RUN mkdir -p /opt/golang && \
	cd /opt/golang && \
	wget https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz && \
	tar -xvf go1.5.3.linux-amd64.tar.gz

ENV PATH $PATH:/opt/golang/go/bin

ADD ./swarm.supervisord.conf /etc/supervisor/conf.d/swarm.supervisord.conf

ENV JENKINS_ADDR localhost
ENV JENKINS_PORT 8080
ENV JENKINS_EXECUTORS_COUNT 1
ENV JENKINS_USERNAME jenkins
ENV JENKINS_PASSWORD jenkins

ADD ./swarm.start.sh /opt/swarm.start.sh
RUN chmod +x /opt/swarm.start.sh

CMD /opt/swarm.start.sh
