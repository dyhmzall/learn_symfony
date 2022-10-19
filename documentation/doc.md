#### Создать проект

> symfony new guestbook --version=5.4 --php=8.1 --webapp --
docker --cloud

#### запустить локальный сервер

> symfony server:start -d

https://127.0.0.1:8000

#### деплой

> symfony cloud:deploy

#### создать контроллер

> symfony console make:controller ConferenceController

#### работа с докером

> docker-compose up -d
>
> docker-compose ps

#### подключиться к postgresql

> symfony run psql

#### либо подклчиться к postgresql в контейнере

> docker-compose exec database psql main main

#### выгрузить и восстановить базу

> symfony run pg_dump --data-only > dump.sql
>
> symfony run psql < dump.sql

