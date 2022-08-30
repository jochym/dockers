FROM mambaorg/micromamba:latest

COPY --chown=$MAMBA_USER:$MAMBA_USER dev.yaml /tmp/env.yaml
RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes

USER root
RUN apt-get update -q
RUN apt-get install -q -y gdebi-core wget git
RUN wget https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN gdebi --n quarto-linux-amd64.deb
RUN apt-get clean
RUN rm quarto-linux-amd64.deb
USER $MAMBA_USER




    