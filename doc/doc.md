#### Создать проект

> symfony new guestbook --version=5.4 --php=8.1 --webapp --
docker --cloud

#### запустить локальный сервер

> symfony server:start -d

https://127.0.0.1:8000

#### смотреть логи сервера онлайн

> symfony server:log

#### деплой

> symfony cloud:deploy

#### посмотреть все роуты проекта

> symfony console debug:router

#### установить phpunit

> symfony composer req phpunit --dev

#### установка компонента messenger

> symfony composer req doctrine-messenger

