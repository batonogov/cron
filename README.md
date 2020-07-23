# CRON

Cron внутри контейнера выполняет ваши задания переданные через файл scheduler.

**Запуск:**

Отредактируйте файл scheduler.

```
docker run \
    -it \
    --name cron \
    --restart unless-stopped \
    -d \
    batonogov/cron
```

[GitHub](https://github.com/batonogov/cron) | 
[Docker Hub](https://hub.docker.com/repository/docker/batonogov/cron)
