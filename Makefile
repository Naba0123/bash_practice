.PHONY: up run

up:
	docker-compose up -d my-ubuntu && make run

run:
	docker-compose run -it my-ubuntu bash

down:
	docker-compose down
