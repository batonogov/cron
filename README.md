# CRON

Cron внутри контейнера выполняет ваши задания .sh и .py из папок cron*.

**Запуск:**

1. Установка необходимых пакетов в dockerfile
```
apt install \
    cron \
    tzdata \
    locales \
    python3 \
    -y && \
```

2. Запускаеи
```
bash up.sh
```

**Остановка:**

```
bash down.sh
```
