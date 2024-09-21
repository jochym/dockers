FROM mambaorg/micromamba:latest

COPY --chown=$MAMBA_USER:$MAMBA_USER dev.yaml /tmp/env.yaml
RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes

USER $MAMBA_USER




    