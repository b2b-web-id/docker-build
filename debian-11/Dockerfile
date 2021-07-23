FROM debian:bullseye
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get update
RUN apt-get install -y gnupg2 nano systemd && apt-get clean
RUN apt-get install -y perl zip bzip2 xz-utils && apt-get clean
RUN apt-get install -y gcc && apt-get clean
RUN apt-get install -y g++ && apt-get clean
RUN apt-get install -y gfortran && apt-get clean
RUN apt-get install -y fakeroot build-essential openssl && apt-get clean
RUN apt-get install -y x11-utils && apt-get clean
CMD ["/bin/bash"]
