FROM ubuntu:18.04

MAINTAINER AK141

USER root

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:neovim-ppa/unstable && \
    apt-get update && \
    apt-get install -y \
    build-essential \
    curl \
    git \
    language-pack-ja-base \
    language-pack-ja \
    neovim \
    python-dev \
    python-pip \
    python3-dev \
    python3-pip

ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"

RUN pip3 install --upgrade neovim

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY .config /root/.config
RUN mkdir /data
WORKDIR /data

ENTRYPOINT [ "/bin/bash" ]