.PHONY: help install requirement information build clean

VERSION := 2.8.*
MAJOR = $(shell echo $(VERSION) | cut -d. -f1)
MINOR = $(shell echo $(VERSION) | cut -d. -f2)
NAME := init-symfony-$(MAJOR).$(MINOR)

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
	symfony version
	$(COMPOSER) --version
	@echo "VERSION=$(VERSION)"
	@echo "NAME=$(NAME)"

build: \
	dependency/$(NAME)

dependency/$(NAME): dependency
	$(COMPOSER) create-project symfony/framework-standard-edition $@ "$(VERSION)"

dependency/$(NAME)/.git: | dependency/$(NAME)
	git -C $| init

dependency:
	mkdir $@

clean:
	rm -rf dependency
