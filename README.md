# CRON

Cron внутри контейнера выполняет ваши задания .sh и .py из папок cron*.

### Запуск:

```
docker-compose up --build -d
```

### Остановка:

```
docker-compose down
```

### Структура приложения:

- cron.daily/ - Ежедневные задани
- cron.hourly/ - Еженасные задания
- cron.monthly/ - Ежемесячные задания
- cron.reboot/ - Задания выполняемые однократно при первом запуске
- cron.start/ - Задания выполняемы при каждом запуске
- cron.weekly/ - Еженедельные задания
- docker-compose.yml - docker-compose файл
- dockerfile - dockerfile для сборки образа
- LICENSE.md - Лицензия
- main.env - Переменные передаваемые в контейнер при создании



# CRON

Cron inside the container performs your tasks .sh and .py from the cron* folders.

### Launch:

``
docker-compose up --build-d
``

### Stop:

``
docker-compose down
``

### App structure:

- cron.daily/ - Daily tasks
- cron.hourly / - Hourly tasks
- cron.monthly / - Monthly tasks
- cron.reboot/ - Tasks performed once at the first start
- cron.start/ - Tasks to be performed at every startup
- cron.weekly/ - Weekly tasks
- docker-compose.yml- docker-compose file
- dockerfile - dockerfile for building a image
- LICENSE.md - License
- main.env - Variables passed to the container during creation
