FROM debian:11

LABEL maintainer="batonogov@icloud.com"

RUN apt update

RUN apt install \
        cron \
        tzdata \
        locales \
        python3 \
        -y

RUN sed -i -e 's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen && locale-gen

RUN rm /etc/cron.daily/*

COPY scripts/* /usr/local/cron/

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_ALL ru_RU.UTF-8

WORKDIR /usr/local/cron/

ENTRYPOINT bash entrypoint.sh
