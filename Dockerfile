FROM ubuntu:13.10 

RUN dpkg-divert --local --rename --add /sbin/initctl
# RUN ln -s /bin/true /sbin/initctl
RUN echo 'deb http://repo.aptly.info/ squeeze main' >> /etc/apt/sources.list.d/aptly.list
RUN gpg --keyserver keys.gnupg.net --recv-keys 2A194991
RUN gpg -a --export 2A194991 | apt-key add -
ADD aptly.conf /etc/aptly.conf

RUN apt-get update
RUN apt-get install aptly bzip2

EXPOSE 8080
