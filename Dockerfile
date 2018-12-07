FROM debian:stable

WORKDIR /home

RUN apt-get -qq update && apt-get -qqy dist-upgrade
RUN apt-get -qqy install make git vim bash 
RUN apt-get -qqy install texlive-science texlive-publishers
RUN apt-get -qqy clean
