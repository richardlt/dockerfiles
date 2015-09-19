FROM richardleterrier/ubuntu

MAINTAINER richard.le.terrier@gmail.com

ADD ./slave.start.sh /opt/slave.start.sh
ADD ./slave.supervisord.conf /etc/supervisor/conf.d/slave.supervisord.conf

RUN apt-get update &&\
	apt-get install -y openssh-server openjdk-7-jdk
	
RUN mkdir -p /var/run/sshd
	
RUN adduser --quiet slave
RUN adduser slave sudo
RUN echo "slave:slave" | chpasswd	
	
RUN chmod +x /opt/slave.start.sh	

EXPOSE 22

CMD /opt/slave.start.sh