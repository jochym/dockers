FROM mambaorg/micromamba:latest

COPY --chown=$MAMBA_USER:$MAMBA_USER dev.yaml /tmp/env.yaml
RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes

USER root

RUN apt-get -qq -y update && apt-get -qq -y install git && apt-get -qqy clean

USER $MAMBA_USER
    
