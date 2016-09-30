FROM rocker/rstudio:latest
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
COPY clouderaimpalaodbc_2.5.32.1002-2_amd64.deb
RUN apt-get update && \
    apt-get install -y unixodbc git && \
    dpkg -i clouderaimpalaodbc_2.5.32.1002-2_amd64.deb && \
    rm clouderaimpalaodbc_2.5.32.1002-2_amd64.deb && \
    apt-get autoremove -y && \
    apt-get clean
EXPOSE 8787
VOLUME /home/rstudio
CMD ["/init"]
