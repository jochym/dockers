FROM continuumio/miniconda3:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

WORKDIR /home

RUN conda update -y --all
RUN conda create -n cfb -c conda-forge python=3.6 conda-build ase spglib
RUN conda create -n cb python=3.6 conda-build
RUN conda clean -tipsy 
