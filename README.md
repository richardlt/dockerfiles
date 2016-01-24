# dockerfiles

This project contains sources for all Docker images available at : <https://hub.docker.com/u/richardleterrier/>

### docker-ubuntu

### docker-slave

### docker-rmeditor

A Docker image for the project <https://github.com/sifxtreme/realtime-markdown-viewer>

	docker run  -v /.../redis/data:/data --name redis -d redis redis-server --appendonly yes
	docker run -d -p 8000:8000 --link redis:redis richardleterrier/rmeditor

### docker-rancher

A clone of the official Rancher image, that allow Rancher to control the host VirtualBox (still not working...)

	docker run -d -e SSH_HOST=ADDRESSOFYOURHOST -e SSH_USER=YOURUSERNAME -v /root/.docker:/root/.docker -v /data/rancher/ssh:/root/.ssh -v /data/rancher/mysql:/var/lib/mysql -v /data/rancher/cattle:/var/lib/cattle --restart=always -p 8080:8080 --name rancher richardleterrier/rancher
