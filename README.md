# CRON

Cron внутри контейнера выполняет ваше задание переданное через переменную (Пример ниже).

**Запуск:**
```
docker run \
    -it \
    --name cron \
    --restart unless-stopped \
    -e CRON='* * * * * ping localhost'
    -d \
    batonogov/cron
```
