#### создания модульного теста

> symfony console make:test TestCase SpamCheckerTest

#### запуск всех модульных тестов

> symfony php bin/phpunit

#### подготовим тестовую базу данных

> symfony console doctrine:database:create --env=test
> 
> symfony console doctrine:migrations:migrate -n --env=test

#### запуск отдельного теста, в данном конкретном случае это функциональный тест

> symfony php bin/phpunit tests/Controller/ConferenceControllerTest.php

