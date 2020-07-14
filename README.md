# CRON

Cron внутри контейнера выполняет ваше задание переданное через переменную (Пример ниже).

**Запуск:**
```
docker run \
    -it \
    --name cron \
    --restart unless-stopped \
    -e CRON='* * * * * ping localhost' \
    -d \
    batonogov/cron
```

**Логи**
```
docker exec cron cat /var/log/cron.log
```

[GitHub](https://github.com/batonogov/cron) | 
[Docker Hub](https://hub.docker.com/repository/docker/batonogov/cron)
