FROM debian:stable

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

WORKDIR /home

RUN apt-get -qq update && apt-get -qqy dist-upgrade
RUN apt-get -qqy install make git vim bash mc wget bzip2
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

ENV TINI_VERSION v0.16.1
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]

