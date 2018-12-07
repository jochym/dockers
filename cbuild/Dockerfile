FROM continuumio/miniconda3:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

WORKDIR /home

RUN conda update -y --all
RUN conda create -n cfbld -c conda-forge python=3.6 conda-build ase spglib
RUN conda create -n bld python=3.6 conda-build
RUN source /opt/conda/etc/profile.d/conda.sh && \
    /opt/conda/bin/conda activate cfbld && \
    /opt/conda/bin/conda config --env --add channels conda-forge
RUN conda env list
RUN conda clean -tipsy
