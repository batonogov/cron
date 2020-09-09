FROM openjdk:16-slim-buster

LABEL maintainer="batonogov@icloud.com"

RUN apt update && \
    apt install \
        cron \
        tzdata \
        locales \
        python3 \
        -y && \
    cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime && \
    sed -i -e 's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen && locale-gen

COPY scripts/* /usr/local/cron/

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_ALL ru_RU.UTF-8

WORKDIR /usr/local/cron/

ENTRYPOINT bash /usr/local/cron/entrypoint.sh
