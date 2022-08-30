FROM continuumio/miniconda3:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update -q && apt-get install -q -y gdebi-core 
RUN wget https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN gdebi --n quarto-linux-amd64.deb
RUN conda update -n base -c defaults conda
RUN conda install -c fastchan nbdev


    