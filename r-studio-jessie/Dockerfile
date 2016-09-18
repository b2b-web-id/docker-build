FROM b2bwebid/r-base:jessie
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get update && \
    apt-get install -y wget psmisc libapparmor1 && \
    /usr/bin/wget wget https://download2.rstudio.org/rstudio-server-0.99.903-amd64.deb && \
    dpkg -i rstudio-server-0.99.903-amd64.deb && \
    rm rstudio-server-0.99.903-amd64.deb && \
    dpkg -r wget && \
    apt-get autoremove -y && \
    apt-get clean
EXPOSE 8787
CMD ["/usr/lib/rstudio-server/bin/rserver"]
