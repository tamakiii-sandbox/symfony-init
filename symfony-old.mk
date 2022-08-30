.PHONY: help install requirement information build clean

VERSION := 2.8.*
NAME := symfony-$(shell echo $(VERSION) | sed -e 's/.\*//g')

COMPOSER_VERSION := 2.2.9
COMPOSER := /usr/local/cellar/composer/$(COMPOSER_VERSION)/bin/composer

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	requirement \
	information

requirement:
	which symfony
	which composer
	symfony check:requirements

information:
	symfony --version
	$(COMPOSER) --version

build: \
	dependency/$(NAME)

dependency/$(NAME): dependency
	$(COMPOSER) create-project symfony/framework-standard-edition $@ $(VERSION)

dependency:
	mkdir $@

clean:
	rm -rf dependency
