FROM debian:jessie
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
COPY sources.list /etc/apt/
COPY cran.list /etc/apt/sources.list.d/
RUN apt-get update && \
    apt-get install -y r-base && \
    apt-get clean
CMD ["/bin/bash"]
