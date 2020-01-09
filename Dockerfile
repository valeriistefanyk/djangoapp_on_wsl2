FROM alpine:3.10

ENV PYTHONBUFFERING=1

RUN apk add py3-pip

ADD . /usr/src/app
WORKDIR /usr/src/app

RUN pip3 install -r requirements.txt