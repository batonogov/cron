#!/bin/bash

echo "Docker контейнер запущен"

declare -p | grep -Ev 'BASHOPTS|BASH_VERSINFO|EUID|PPID|SHELLOPTS|UID' > /usr/local/cron/container.env

crontab /usr/local/cron/scheduler
cron -f
