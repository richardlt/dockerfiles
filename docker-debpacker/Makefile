clean:
	rm -rf cds

clone:
	git clone https://github.com/ovh/cds.git

build:
	docker run -it -v $(PWD)/cds:/go/src/github.com/ovh/cds \
	golang:1.13 sh -c "cd /go/src/github.com/ovh/cds/tools/debpacker && \
	ARCH=amd64 make clean build"