FROM openjdk:16-slim-buster

RUN apt update && \
    apt upgrade && \
    apt install \
        cron \
        tzdata \
        locales \
        python3 \
        -y && \
    cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime && \
    sed -i -e 's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen && locale-gen \
    apt clean

COPY scripts/* /usr/local/cron/

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_ALL ru_RU.UTF-8

ENTRYPOINT bash /usr/local/cron/entrypoint.sh
