# CRON

Cron внутри контейнера выполняет ваши задания .sh и .py из папки cron/.

## Запуск

```bash
docker compose up -d
```

## Остановка

```bash
docker compose down
```

## Структура приложения

- cron/daily/ - Ежедневные задания
- cron/hourly/ - Ежечасные задания
- cron/monthly/ - Ежемесячные задания
- cron/reboot/ - Задания выполняемые однократно при первом запуске
- cron/start/ - Задания выполняемы при каждом запуске
- cron/weekly/ - Еженедельные задания
- docker-compose.yml - docker-compose файл
- dockerfile - dockerfile для сборки образа
- LICENSE.md - Лицензия
- main.env - Переменные передаваемые в контейнер при создании

# CRON

Cron inside the container performs your tasks .sh and .py from the cron* folders.

## Launch

```bash
docker-compose up --build -d
```

## Stop

```bash
docker-compose down
```

## App structure

- cron/daily/ - Daily tasks
- cron/hourly / - Hourly tasks
- cron/monthly / - Monthly tasks
- cron/reboot/ - Tasks performed once at the first start
- cron/start/ - Tasks to be performed at every startup
- cron/weekly/ - Weekly tasks
- docker-compose.yml- docker-compose file
- dockerfile - dockerfile for building a image
- LICENSE.md - License
- main.env - Variables passed to the container during creation
