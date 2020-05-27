FROM ubuntu:latest

RUN apt-get update
RUN apt-get dist-upgrade -y

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y \
  postgresql-client \
  curl \
  python3 \
  python3-pip \
  python3-psycopg2

RUN pip3 install django==3.0.6

EXPOSE 8000

ENV DB_HOST=akasq-postgres \
    DB_USER=postgres \
    DB_PASS=letmein \
    DB_NAME=akasq \
    DB_PORT=5432 \
    ALLOWED_HOSTS=127.0.0.1

ENV PYTHONUNBUFFERED=true

RUN mkdir -p /srv/portal
COPY . /srv/portal/

WORKDIR /srv/portal

CMD /bin/bash
