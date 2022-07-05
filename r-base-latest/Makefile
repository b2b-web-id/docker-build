all: download extract build

download:
	wget -c https://github.com/b2b-web-id/docker-rbase/archive/refs/tags/bullseye-2022.1.0.tar.gz

extract:
	tar -xvzf bullseye-2022.1.0.tar.gz

build:
	docker pull b2bwebid/debian:bullseye
	cd docker-rbase-bullseye-2022.1.0/ && $(MAKE)

clean:
	rm -rf bullseye-2022.1.0.tar.gz docker-rbase-bullseye-2022.1.0/

release:
	cd docker-rbase-bullseye-2022.1.0/ && $(MAKE) release
