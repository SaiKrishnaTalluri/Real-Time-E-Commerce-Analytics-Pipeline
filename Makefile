.PHONY: up down produce logs test lint

up:
	docker compose up -d kafka kafka-ui

down:
	docker compose down -v

produce:
	docker compose run --rm producer

logs:
	docker compose logs -f producer kafka

test:
	pytest -q

lint:
	ruff check .
