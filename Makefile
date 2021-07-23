.PHONY: all debian11

all: debian10 debian11

debian10:
	cd debian-10 && $(MAKE) && $(MAKE) release

debian11:
	cd debian-11 && $(MAKE) && $(MAKE) release
