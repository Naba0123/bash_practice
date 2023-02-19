.PHONY: up run

up:
	docker-compose up -d my-ubuntu

run:
	docker-compose run -it my-ubuntu bash

down:
	docker-compose down
