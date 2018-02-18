FROM ubuntu:trusty

ADD ./start.sh /opt/start.sh
ADD ./ubuntu.supervisord.conf /etc/supervisor/conf.d/ubuntu.supervisord.conf

RUN apt-get update &&\
	apt-get install -y wget curl vim ssh supervisor
	
RUN chmod +x /opt/start.sh	

CMD /opt/start.sh