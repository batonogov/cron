# CRON with OpenJDK

Специальная версия на основе образа с OpenJDK. 
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
- dockerfile - dockerfile для сборки образа zabbix-backup
- LICENSE.md - Лицензия
- main.env - Переменные передаваемые в контейнер при создании
