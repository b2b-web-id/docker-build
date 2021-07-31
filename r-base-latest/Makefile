all: download extract build

download:
	wget -c https://github.com/b2b-web-id/docker-rbase/archive/refs/tags/buster-2021.1.tar.gz

extract:
	tar -xvzf buster-2021.1.tar.gz

build:
	docker pull b2bwebid/debian:buster
	cd docker-rbase-buster-2021.1/ && $(MAKE)

clean:
	rm -rf buster-2021.1.tar.gz docker-rbase-buster-2021.1/

release:
	cd docker-rbase-buster-2021.1/ && $(MAKE) release
