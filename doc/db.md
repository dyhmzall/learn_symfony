#### подключиться к postgresql

> symfony run psql

#### либо подклчиться к postgresql в контейнере

> docker-compose exec database psql main main

#### выгрузить и восстановить базу

> symfony run pg_dump --data-only > dump.sql
>
> symfony run psql < dump.sql

#### накатить миграцию

> symfony console doctrine:migrations:migrate

#### выполнить sql команду

> symfony run psql -c "SELECT * FROM admin"