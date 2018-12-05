FROM continuumio/miniconda3:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

WORKDIR /home

RUN conda update --all
RUN conda create -n cb -c conda-forge python=3.6 conda-build ase spglib

