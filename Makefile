.PHONY: run
run:
	poetry run start

.PHONY: lint
lint:
	poetry run mypy src tests
	poetry run flake8 src tests

.PHONY: format
format:
	poetry run black src tests
	poetry run isort src tests

.PHONY: format-check
format-check:
	poetry run black src tests --check
	poetry run isort src tests --check

.PHONY: test
test:
	poetry run pytest
