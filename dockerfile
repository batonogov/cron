FROM debian:buster-slim

RUN apt update && \
    apt upgrade -y && \
    apt install \
        cron \
        -y && \
    apt clean

COPY entrypoint.sh /
COPY scheduler /
COPY scheduler /
COPY scripts/hourly.sh /
COPY scripts/daily.sh /
COPY scripts/weekly.sh /
COPY scripts/monthly.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
