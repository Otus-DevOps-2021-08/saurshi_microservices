# saurshi_microservices
saurshi microservices repository

## Практика
### Задание №12 Docker-2
**Технология контейнеризации. Введение в Docker**

#### В процессе сделано:
* Создание docker host
* Создание своего образа
* Работа с Docker Hub

#### Как запустить проект:
* docker build -t reddit:latest .
* docker run --name reddit -d --network=host reddit:latest
* docker tag reddit:latest litelite/otus-reddit:1.0
* docker push litelite/otus-reddit:1.0
* docker run --name reddit -d -p 9292:9292 litelite/otus-reddit:1.0

#### Как проверить работоспособность:
* Перейти по ссылке http://<ip_adress>:9292
