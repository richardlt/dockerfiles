# dockerfiles

This project contains sources for all Docker images available at : <https://hub.docker.com/u/richardleterrier/>

### docker-ubuntu

### docker-slave

### docker-rmeditor

A Docker image for the project <https://github.com/sifxtreme/realtime-markdown-viewer>

	docker run  -v /.../redis/data:/data --name redis -d redis redis-server --appendonly yes
	docker run -d -p 8000:8000 --link redis:redis richardleterrier/rmeditor

### docker-rancher

A clone of the official Rancher image, that allow Rancher to control the host VirtualBox
