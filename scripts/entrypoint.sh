#!/bin/bash

echo "Docker контейнер запущен"

bash reboot.sh

declare -p | grep -Ev 'BASHOPTS|BASH_VERSINFO|EUID|PPID|SHELLOPTS|UID' > /usr/local/cron/container.env

crontab /usr/local/cron/scheduler
cron -f
