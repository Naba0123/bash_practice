.PHONY: up run

run:
	docker-compose run --build -it my-ubuntu bash

down:
	docker-compose down
