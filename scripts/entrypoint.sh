#!/bin/bash

echo "Docker контейнер запущен"

if [ -n "$localtime" ]; then
    cp /usr/share/zoneinfo/${localtime} /etc/localtime
else
    cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime
fi

bash reboot.sh

declare -p | grep -Ev 'BASHOPTS|BASH_VERSINFO|EUID|PPID|SHELLOPTS|UID' > /usr/local/cron/container.env

crontab /usr/local/cron/scheduler
cron -f
