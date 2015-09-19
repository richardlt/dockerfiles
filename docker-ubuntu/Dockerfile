FROM ubuntu:trusty

ADD ./start.sh /opt/start.sh
ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN apt-get update &&\
	apt-get install -y wget curl vim ssh supervisor
	
RUN chmod +x /opt/start.sh	

CMD /opt/start.sh