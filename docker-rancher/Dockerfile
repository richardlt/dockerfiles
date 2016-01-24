FROM rancher/server:v0.56.0-rc3

MAINTAINER richard.le.terrier@gmail.com

COPY ./fake-docker-machine.sh /opt/fake-docker-machine.sh

RUN chmod 744 /opt/fake-docker-machine.sh && rm /usr/bin/docker-machine && ln -s /opt/fake-docker-machine.sh /usr/bin/docker-machine

VOLUME ["/root/.docker"]
VOLUME ["/root/.ssh"]
VOLUME ["/var/lib/cattle"]
VOLUME ["/var/lib/mysql"]
VOLUME ["/var/log/mysql"]

EXPOSE 8080
EXPOSE 3306

CMD ["/usr/bin/s6-svscan", "/service"]
