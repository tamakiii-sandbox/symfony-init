.PHONY: help install clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependency/init-symfony-2.7 \
	dependency/init-symfony-2.8 \
	dependency/init-symfony-3.1 \
	dependency/init-symfony-3.2 \
	dependency/init-symfony-3.3 \
	dependency/init-symfony-3.4 \
	dependency/init-symfony-5.1 \
	dependency/init-symfony-5.2 \
	dependency/init-symfony-5.3 \
	dependency/init-symfony-5.4 \
	dependency/init-symfony-6.0 \
	dependency/init-symfony-6.1

dependency/init-symfony-2.7: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-2.7 $@

dependency/init-symfony-2.8: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-2.8 $@

# dependency/init-symfony-3.0: dependency
# 	git clone https://github.com/tamakiii-sandbox/init-symfony-3.0 $@

dependency/init-symfony-3.1: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-3.1 $@

dependency/init-symfony-3.2: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-3.2 $@

dependency/init-symfony-3.3: dependency
	git clone: https://github.com/tamakiii-sandbox/init-symfony-3.3 $@

dependency/init-symfony-3.4: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-3.4 $@


# dependency/init-symfony-4.0: dependency
# 	git clone https://github.com/tamakiii-sandbox/init-symfony-4.0 $@

# dependency/init-symfony-4.1: dependency
# 	git clone https://github.com/tamakiii-sandbox/init-symfony-4.1 $@

# dependency/init-symfony-4.2: dependency
# 	git clone https://github.com/tamakiii-sandbox/init-symfony-4.2 $@

# dependency/init-symfony-4.3: dependency
# 	git clone https://github.com/tamakiii-sandbox/init-symfony-4.3 $@

# dependency/init-symfony-4.4: dependency
# 	git clone https://github.com/tamakiii-sandbox/init-symfony-4.4 $@

# dependency/init-symfony-5.0: dependency
# 	git clone https://github.com/tamakiii-sandbox/init-symfony-5.0 $@


dependency/init-symfony-5.1: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-5.1 $@

dependency/init-symfony-5.2: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-5.2 $@

dependency/init-symfony-5.3: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-5.3 $@

dependency/init-symfony-5.4: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-5.4 $@

dependency/init-symfony-6.0: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-6.0 $@

dependency/init-symfony-6.1: dependency
	git clone https://github.com/tamakiii-sandbox/init-symfony-6.1 $@

dependency:
	mkdir $@

clean:
	rm -rf dependency
