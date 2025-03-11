FROM debian:10

RUN apt update && apt install -y tesseract-ocr libtesseract-dev libleptonica-dev build-essential pkg-config

ADD . /home/workspace/tesslinesplit
RUN cd /home/workspace/tesslinesplit && make install

VOLUME /data
WORKDIR /data
