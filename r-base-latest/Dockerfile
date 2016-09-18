FROM debian:jessie
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
COPY sources.list /etc/apt/
COPY cran.list /etc/apt/sources.list.d/
RUN apt-key adv --keyserver keys.gnupg.net --recv-key 6212B7B7931C4BB16280BA1306F90DE5381BA480 && \
    apt-get update && \
    apt-get install -y r-base && \
    apt-get clean
CMD ["/bin/bash"]
