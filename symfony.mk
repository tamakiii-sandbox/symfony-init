.PHONY: help install build requirement clean

VERSION := 6.1.4
OPTIONS := --webapp

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	requirement

requirement:
	which symfony
	symfony check:requirements

build: \
	dependency/symfony-$(VERSION)

dependency/symfony-$(VERSION): dependency
	symfony local:new --version="$(VERSION)" $(OPTIONS) $@

dependency:
	mkdir $@

clean:
	rm -rf dependency
