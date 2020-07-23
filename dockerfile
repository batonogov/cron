FROM debian:buster-slim

RUN apt update && \
    apt upgrade -y && \
    apt install \
        cron \
        -y && \
    apt clean

COPY entrypoint.sh /
COPY scheduler /

RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
