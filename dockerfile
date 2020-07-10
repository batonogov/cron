FROM debian:buster-slim

RUN apt update && \
    apt upgrade -y && \
    apt install \
        cron \
        -y && \
    apt clean

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
