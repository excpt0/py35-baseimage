FROM python:3.5.3-slim

MAINTAINER Ilya Grinzovskiy <ilya.grinzovskiy@gmail.com>

RUN apt-get update -qy && apt-get upgrade -qy
RUN apt-get install -qy libcurl4-openssl-dev \
                        gcc \
                        libffi-dev \
                        unzip \
                        wget \
                        software-properties-common \
                        sudo \
                        git \
                        libxml2-dev \
                        libxslt-dev \
                        lib32z1-dev \
                        libpq-dev \
                        libjpeg62-turbo-dev \
                        gettext \
                        telnet \
                        nano

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV TERM xterm
RUN bash -c 'echo "export LC_ALL=C.UTF-8" >> ~/.bashrc'
