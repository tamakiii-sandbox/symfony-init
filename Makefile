.PHONY: help install clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependency\symfony-$(VERSION)

dependency/symfony-$(VERSION): dependency
	# git clone 

dependency:
	mkdir $@

clean:
	rm -rf dependency