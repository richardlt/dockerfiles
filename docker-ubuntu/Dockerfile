FROM ubuntu:trusty

ADD ./start.sh /opt/start.sh

RUN apt-get update &&\
	apt-get install -y wget curl vim ssh supervisor

CMD /opt/start.sh