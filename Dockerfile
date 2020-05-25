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

WORKDIR /srv/portal

EXPOSE 8000

CMD /bin/bash
