# dockerfiles

This project contains sources for all Docker images available at : <https://hub.docker.com/u/richardleterrier/>

### docker-ubuntu

### docker-jenkins-swarm

A swarm slave for Jenkins

	docker run -d \
		-e JENKINS_ADDR=ADDRESSOFYOURJENKINS \
		-e JENKINS_PORT=PORTOFYOURJENKINS \
		-e JENKINS_USERNAME=YOURUSERNAME \
		-e JENKINS_PASSWORD=YOURPASSWORD \
		-e JENKINS_EXECUTORS_COUNT=NUMBEROFEXECUTORS \
		--name swarm richardleterrier/swarm

### docker-rmeditor

A Docker image for the project <https://github.com/sifxtreme/realtime-markdown-viewer>

	docker run -d \
		-v /.../redis/data:/data \
		--name redis redis redis-server --appendonly yes
	docker run -d \
		-p 8000:8000 \
		--link redis:redis \
		richardleterrier/rmeditor

### docker-rancher

A clone of the official Rancher image, that allow Rancher to control the host VirtualBox (still not working...)

	docker run -d \
		-e SSH_HOST=ADDRESSOFYOURHOST \
		-e SSH_USER=YOURUSERNAME \
		-v /root/.docker:/root/.docker \
		-v /data/rancher/ssh:/root/.ssh \
		-v /data/rancher/mysql:/var/lib/mysql \
		-v /data/rancher/cattle:/var/lib/cattle \
		--restart=always \
		-p 8080:8080 \
		--name rancher richardleterrier/rancher

### docker-rancher-compose

A small image based on alpine that include Rancher compose cli

	docker run --rm -e RANCHER_URL=YOURRANCHERURL \
		-e RANCHER_SECRET_KEY=$RANCHERSECRETKEY \
		-e RANCHER_ACCESS_KEY=$RANCHERACCESSKEY \
		-v `pwd`:/usr/src/workdir \
		richardleterrier/rancher-compose:v0.12.0 \
		rancher-compose \
		--file ./docker-compose.yml \
		--rancher-file ./rancher-compose.yml \
		--project-name project \
		up -d

### docker-wait-for-it

A small image based on alpine that include wait-for-it script from <https://github.com/iturgeon/wait-for-it>

	docker run --rm richardleterrier/wait-for-it:v1.0 \
		wait-for-it.sh www.google.com:80	

# scripts

### build

	./build.sh nameofthedockerimage (ex: rancher, ubuntu...)

### push

	USERNAME=YOURDOCKERHUBUSERNAME PASSWORD=YOURDOCKERHUBPASSWORD EMAIL=YOURDOCKERHUBEMAIL ./push.sh nameofthedockerimage (ex: rancher, ubuntu...)
