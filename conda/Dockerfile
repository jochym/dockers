FROM debian:stable
#  $ docker build . -t continuumio/miniconda3:latest -t continuumio/miniconda3:4.5.4
#  $ docker run --rm -it continuumio/miniconda3:latest /bin/bash
#  $ docker push continuumio/miniconda3:latest
#  $ docker push continuumio/miniconda3:4.5.4

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH

WORKDIR /home

RUN apt-get -qq update && apt-get -qqy dist-upgrade
RUN apt-get -qqy install make git vim bash mc build-essential

RUN apt-get update --fix-missing && \
    apt-get install -y wget bzip2 ca-certificates curl git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda clean -tipsy && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc

RUN /opt/conda/bin/conda update -y --all -n base
RUN /opt/conda/bin/conda install -y -n base conda-build
RUN /opt/conda/bin/conda create -n bld python=3.6 conda-build
RUN /opt/conda/bin/conda create -n cfbld -c conda-forge python=3.6 conda-build
RUN /opt/conda/bin/conda config -n cfbld--env --add channels conda-forge

RUN /opt/conda/bin/conda update -y --all -n bld
RUN /opt/conda/bin/conda update -y --all -n cfbld
RUN /opt/conda/bin/conda clean -tipsy

ENV TINI_VERSION v0.16.1
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]

