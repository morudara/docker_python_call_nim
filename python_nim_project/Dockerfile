FROM python:3.9-slim

ENV PYTHONPATH /usr/local/bin/python

# ライブラリインストール
RUN apt-get update && apt-get install -y \
  wget \
  curl \
  gcc \
  git \
  vim

# Nim環境構築
RUN wget https://nim-lang.org/choosenim/init.sh
RUN sh init.sh -y
ENV PATH /root/.nimble/bin:$PATH
RUN echo $PATH
RUN nimble install -y nimpy

WORKDIR /python_nim_project

# Python環境構築
COPY ./requirements.txt /python_nim_project/requirements.txt
RUN python -m pip install --upgrade pip && \
  python -m pip install -r requirements.txt

# コード転送
COPY . /python_nim_project
