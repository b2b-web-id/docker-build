.PHONY: clean all debian11 debian10 rbase rquant

all: debian11 rbase rquant

debian10:
	cd debian-10 && $(MAKE) && $(MAKE) release

debian11:
	cd debian-11 && $(MAKE) && $(MAKE) release

debian12:
	cd debian-12 && $(MAKE) && $(MAKE) release

rbase:
	if [ -f "r-base-2022.1.0.tar.gz" ]; then rm r-base-2022.1.0.tar.gz; fi
	if [ -d "r-base" ]; then rm -rf r-base; fi
	wget https://github.com/b2b-web-id/docker-rbase/archive/refs/tags/bullseye-2022.1.0.tar.gz -O r-base-2022.1.0.tar.gz
	tar xf r-base-2022.1.0.tar.gz
	mv docker-rbase-bullseye-2022.1.0 r-base
	cd r-base && $(MAKE) && $(MAKE) release
	rm -rf r-base

rquant:
	if [ -f "r-quant-2023.1.tar.gz" ]; then rm r-quant-2023.1.tar.gz; fi
	if [ -d "r-quant" ]; then rm -rf r-quant; fi
	wget https://github.com/b2b-web-id/docker-rquant/archive/refs/tags/r-quant-2023.1.tar.gz
	tar vxf r-quant-2023.1.tar.gz
	mv docker-rquant-r-quant-2023.1 r-quant
	cd r-quant && $(MAKE) && $(MAKE) release
	rm -rf r-quant

rstudio:
	if [ -f "rstudio-2023.1.tar.gz" ]; then rm rstudio-2023.1.tar.gz; fi
	if [ -d "r-studio" ]; then rm -rf r-studio; fi
	wget https://github.com/b2b-web-id/docker-rstudio/archive/refs/tags/v2023.1.tar.gz -O rstudio-2023.1.tar.gz
	tar vxf rstudio-2023.1.tar.gz
	mv docker-rstudio-2023.1 r-studio
	cd r-studio && $(MAKE) && $(MAKE) release
	rm -rf r-studio

clean:
	rm *.tar.gz
