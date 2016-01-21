FROM rancher/server

RUN apt-get install -y wget && \
    echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list && \
    wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - && \
    apt-get update && \
    apt-get install -y virtualbox-5.0

VOLUME ["/var/lib/cattle"]
VOLUME ["/var/lib/mysql"]
VOLUME ["/var/log/mysql"]

EXPOSE 8080
EXPOSE 3306

CMD ["/usr/bin/s6-svscan", "/service"]
