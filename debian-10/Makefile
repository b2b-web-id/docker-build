NAME = b2bwebid/debian
VERSION = buster

.PHONY: all build tag_latest release

all: build

build:
	docker pull debian:buster
	docker build -t $(NAME):$(VERSION) --rm .

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest
	docker push ${NAME}:latest

release:
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "Build image first."; false; fi
	docker push $(NAME):$(VERSION)

