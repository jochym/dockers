FROM continuumio/miniconda3:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

WORKDIR /home

RUN conda update -y --all

RUN conda create -n bld python=3.6 conda-build
RUN conda update -n bld -y --all

RUN conda create -n cfbld -c conda-forge python=3.6 conda-build ase spglib
RUN conda update -n cfbld -c conda-forge -y --all

RUN conda env list
RUN conda clean -tipsy
