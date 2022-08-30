#FROM continuumio/miniconda3:latest
FROM mambaorg/micromamba:latest

COPY --chown=$MAMBA_USER:$MAMBA_USER dev.yaml /tmp/env.yaml
RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes

USER root
RUN apt-get update -q
RUN apt-get install -q -y gdebi-core wget
RUN wget https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN gdebi --n quarto-linux-amd64.deb
RUN apt-get clean
RUN rm quarto-linux-amd64.deb
USER $MAMBA_USER
# RUN conda update -y -n base -c defaults conda
# RUN conda install -y -c conda-forge mamba
# RUN conda clean -y --all
# RUN mamba install -y -c fastchan nbdev 
# RUN mamba install -y -c conda-forge numpy jupyter ase spglib asap3 kim-api openkim-models=2019.07.25
# RUN mamba clean -y --all




    