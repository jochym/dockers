FROM debian:bookworm
WORKDIR /home

RUN apt-get -qq update && apt-get -qqy dist-upgrade
RUN apt-get -qqy install gcc g++ gfortran make git vim bash
RUN apt-get clean
