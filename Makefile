.PHONY: all debian11

all: debian10 debian11 rbase

debian10:
	cd debian-10 && $(MAKE) && $(MAKE) release

debian11:
	cd debian-11 && $(MAKE) && $(MAKE) release

rbase:
	cd r-base-latest && $(MAKE) && $(MAKE) release && $(MAKE) clean
