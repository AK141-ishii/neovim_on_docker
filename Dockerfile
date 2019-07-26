FROM ubuntu:18.04

MAINTAINER AK141
ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"

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
    python3-pip \
    && pip3 install --upgrade neovim \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && mkdir /data
RUN apt update && apt upgrade -y && \
    apt install -y \
    gdb yasm clang

COPY .config /root/.config
COPY .setting /root/.setting
RUN chmod +x /root/.setting \
    && bash /root/.setting/adapt.sh

WORKDIR /data

ENTRYPOINT [ "/bin/bash" ]
