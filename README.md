# Тестовое задание.

Чтобы начать нужно создать env файл в домашнем каталоге и ввести туда свой API_KEY. Я пользовался сервисом -     [Weather Api] (https://www.weatherapi.com), поскольку предлоеженный выдавал ошибку спустя примерно 20 запросов..

После этого нужно открыть консоль (rails c) и активировать сервис командой: "AccuWeather::AddDataService.call".
Запускаем сервер и готово!

Эндпоинты:

* <http://localhost:3000/api/weather/health>

* <http://localhost:3000/api/weather/current>

* <http://localhost:3000/api/weather/by_time/1673838000> Число в конце это Epoch time

* <http://localhost:3000/api/weather/historical>

* <http://localhost:3000/api/weather/historical/max>

* <http://localhost:3000/api/weather/historical/min>

* <http://localhost:3000/api/weather/historical/avg>

