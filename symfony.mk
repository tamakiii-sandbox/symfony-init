.PHONY: help install requirement information build clean

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

information:
	php --version
	symfony version
	composer --version
	@echo "VERSION=$(VERSION)"
	@echo "NAME=$(NAME)"


build: \
	dependency/$(NAME) \
	dependency/$(NAME)/.git

dependency/$(NAME): dependency
	symfony local:new --version="$(VERSION)" $(OPTIONS) $@

dependency/$(NAME)/.git: | dependency/$(NAME)
	git -C $| init

dependency:
	mkdir $@

clean:
	rm -rf dependency
