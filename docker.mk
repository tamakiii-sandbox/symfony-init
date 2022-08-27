.PHONY: help install dependency build

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependency \
	docker-compose.override.yaml \
	build

dependency:
	type docker
	type mutagen
	type docker-compose
	type mutagen-compose

build:
	mutagen-compose build


docker-compose.override.yaml: | docker/docker-compose.override.yaml
	cp $| $@

clean:
	rm -rf docker-compose.override.yaml
