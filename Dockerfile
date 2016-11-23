FROM ubuntu:12.04

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install \
        build-essential \
        python2.7-dev \
        python-pip

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN pip install wheel && \
    python setup.py bdist_wheel
