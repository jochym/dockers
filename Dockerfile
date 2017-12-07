FROM jochym/circle:latest

WORKDIR /home

RUN apt-get -qqy install libopenmpi-dev openmpi-bin libfftw3-dev libhdf5-dev python python3
RUN apt-get -qqy install libopenblas-dev libatlas-base-dev libopenmp-dev


