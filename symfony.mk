.PHONY: help install build requirement clean

VERSION := 6.1.*
MAJOR = $(shell echo $(VERSION) | cut -d. -f1)
MINOR = $(shell echo $(VERSION) | cut -d. -f2)
NAME := init-symfony-$(MAJOR).$(MINOR)

OPTIONS := --webapp

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	requirement

requirement:
	which symfony
	which composer
	symfony check:requirements

build: \
	dependency/$(NAME)

dependency/$(NAME): dependency
	symfony local:new --version="$(VERSION)" $(OPTIONS) $@

dependency/$(VERSION)/.git: | dependency/$(NAME)
	git -C $| init

dependency:
	mkdir $@

clean:
	rm -rf dependency
