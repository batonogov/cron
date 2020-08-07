# CRON

Cron внутри контейнера выполняет ваши задания из папок cron*.

**Запуск:**

Установка необходимых пакетов в dockerfile
```
apt install \
    cron \
    tzdata \
    locales \
    -y && \
```

Запуск
```
bash up.sh
```

**Остановка:**

```
bash down.sh
```

[GitHub](https://github.com/batonogov/cron) | 
