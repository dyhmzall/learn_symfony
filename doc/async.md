#### запустить обработчик, который будет доставать сообщения из очереди и отправлять нужному получателю сообщения

> symfony console messenger:consume async -vv

#### то же самое, но в фоновом режиме

> symfony run -d --watch=config,src,templates,vendor symfony console messenger:consume async -vv

#### вывести все фоновые воркеры

> symfony server:status

#### вывести сообщения с ошибками - они будут в особой очереди

> symfony console messenger:failed:show

#### отправить повторно сообщения с ошибками

> symfony console messenger:failed:retry

