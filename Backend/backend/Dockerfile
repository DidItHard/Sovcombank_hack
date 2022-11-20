FROM python:3.10-slim-bullseye
WORKDIR /backend
COPY ./requirements.txt ./
RUN pip install -r ./requirements.txt

COPY ./ .


#
#FROM debian:11
##FROM ubuntu:18.04
#
#COPY ./requirements.txt /requirements.txt
#
#RUN apt update && apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev xz-utils
#
#WORKDIR /python
#
#RUN wget -O ./python.tar.xz https://www.python.org/ftp/python/3.10.7/Python-3.10.7.tar.xz \
#    && tar -xf ./python.tar.xz \
#    && rm -rf ./python.tar.xz \
#    && cd Python-3.10.7/ \
#    && ./configure --enable-optimizations \
#    && make \
#    && make altinstall
#
#WORKDIR /backend
#COPY ./requirements.txt ./
#
#RUN python3.10 -m pip install -r requirements.txt
#
##COPY ./backend .
#RUN apt install -y init