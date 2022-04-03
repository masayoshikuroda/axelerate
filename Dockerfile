FROM ubuntu:20.04

RUN apt update
RUN apt install -y python3 python3-pip
RUN python3 -m pip install --upgrade pip
RUN apt install -y git

RUN python3 -m pip  install aXeleRate

WORKDIR /root
RUN git clone https://github.com/AIWintermuteAI/aXeleRate
RUN apt install -y unzip
COPY santa_uno_dataset.zip /root
RUN unzip santa_uno_dataset.zip

WORKDIR /root/aXeleRate
COPY santa_uno.json configs/

