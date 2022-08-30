FROM continuumio/miniconda3:latest

RUN apt-get update -q && apt-get install -q -y gdebi-core 
RUN wget https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN gdebi --n quarto-linux-amd64.deb
RUN rm quarto-linux-amd64.deb
RUN conda update -n base -c defaults conda
RUN conda install -c conda-forge mamba
RUN conda clean -y --all
RUN mamba install -c fastchan nbdev 
RUN mamba install -c conda-forge numpy jupyter ase spglib asap3 kim-api openkim-models=2019.07.25
RUN mamba clean -y --all




    