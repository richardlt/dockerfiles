FROM richardleterrier/ubuntu

MAINTAINER richard.le.terrier@gmail.com

RUN apt-get update && \
	apt-get install -y openjdk-8-jdk

RUN cd opt && \
	mkdir swarm && \
	cd swarm && \
	wget http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/2.0/swarm-client-2.0-jar-with-dependencies.jar

ADD ./slave.start.sh /opt/slave.start.sh
ADD ./slave.supervisord.conf /etc/supervisor/conf.d/slave.supervisord.conf

RUN chmod +x /opt/slave.start.sh

ENV TEST hello

CMD /opt/slave.start.sh
