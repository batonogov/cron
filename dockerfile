FROM debian:buster-slim

RUN apt update && \
    apt upgrade -y && \
    apt install \
        cron \
        tzdata \
        locales \
        -y && \
    cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime && \
    sed -i -e 's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen && locale-gen \
    apt clean

COPY entrypoint.sh /
COPY scheduler /
COPY scheduler /
COPY scripts/hourly.sh /
COPY scripts/daily.sh /
COPY scripts/weekly.sh /
COPY scripts/monthly.sh /
COPY scripts/reboot.sh /

ENV LANG ru_RU.UTF-8  
ENV LANGUAGE ru_RU:ru  
ENV LC_ALL ru_RU.UTF-8 

RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
