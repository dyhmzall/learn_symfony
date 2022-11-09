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

#### установить бандл фикстуры

> symfony composer req orm-fixtures --dev

#### применение фикстур

> symfony console doctrine:fixtures:load --env=test

#### сброс фикстур

> symfony console doctrine:fixtures:load --env=test

#### запустить make-файл со всеми необходимыми командами

> make tests

#### установить приблуду, чтобы все результаты тестов откатывались после прохождения теста

> symfony composer req "dama/doctrine-test-bundle:^6" --dev

#### установить panther

> symfony composer req panther --dev

