FROM ubuntu:latest

LABEL org.opencontainers.image.source=https://github.com/SophistryEng/PicoBuildEnv

RUN apt-get update
RUN apt-get install -y git cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential

RUN git clone https://github.com/raspberrypi/pico-sdk.git /pico-sdk && \
	cd /pico-sdk && \
	git submodule update --init
ENV PICO_SDK_PATH=/pico-sdk
