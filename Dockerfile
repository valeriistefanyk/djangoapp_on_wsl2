FROM alpine:3.10

ENV PYTHONBUFFERING=1

RUN apk add py3-pip py3-psycopg2 uwsgi uwsgi-python3 uwsgi-http

ADD . /usr/src/app
WORKDIR /usr/src/app

RUN pip3 install -r requirements.txt