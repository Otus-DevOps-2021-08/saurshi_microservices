# saurshi_microservices
saurshi microservices repository

## Практика
### Задание №13 Docker-3
**Docker-образы. Микросервисы**

#### В процессе сделано:
* Описал и собрал Docker-образы для сервисного приложения
* Научился оптимизировать работу с Docker-образами
* Запуск и работа приложения на основе Docker-образов, docker run

#### Как запустить проект:
* docker volume create reddit_db

* docker run -d --network=reddit --network-alias=post_db \
	--network-alias=comment_db -v reddit_db:/data/db mongo:latest
* docker run -d --network=reddit \
	-network-alias=post saurshi/post:1.0
* docker run -d --network=reddit \
	--network-alias=comment saurshi/comment:1.0
* docker run -d --network=reddit \
	-p 9292:9292 saurshi/ui:2.0

#### Как проверить работоспособность:
* Перейти по ссылке http://<docker-host-ip>:9292
* Написать пост.
