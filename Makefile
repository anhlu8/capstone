setup: python -m venv venv

venv: source ./venv/bin/activate

.ONESHELL:
install:
	cd flask/; \
	pip install --upgrade pip &&\
		pip install -r requirements.txt

validate-circleci:
	circleci config process .circleci/config.yml

lint:
	hadolint ./Dockerfile
	pylint --disable=R,C,W1203 flask/app.py

run-circleci-local:
	circleci local execute

all: install lint run-circleci-local