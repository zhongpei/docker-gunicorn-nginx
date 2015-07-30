help:
	@echo "build-local - Build container for local development"
	@echo "build-deploy - Build container in production mode"
	@echo "run-local - Run container for local development"
	@echo "run-deploy - Run container for in production mode"

build-base:
	cd ops/base/; docker build -t="zhongpei/django-base" .

build-local: build-base
	cd ops/local/; docker build -t="zhongpei/django-local" .

build-deploy: build-base
	cd ops/deploy/; docker build -t="zhongpei/django-deploy" .

build:build-local build-deploy
	echo "ok"

run-local: build-local
	docker run -P -t -i -v $(CURDIR)/app:/opt/app zhongpei/django-local

run-deploy: build-deploy
	docker run -P -t -i -v $(CURDIR)/app:/opt/app zhongpei/django-deploy
