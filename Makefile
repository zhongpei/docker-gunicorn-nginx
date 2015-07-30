help:
	@echo "build - Build container for local development"
	@echo "run-local - Run container for local development"
	@echo "run-deploy - Run container for in production mode"

build-python-base:
	cd ops/python-base/; docker build -t="zhongpei/python-base" .

build-django-base:build-python-base
	cd ops/django-base/; docker build -t="zhongpei/django-base" .

 
build-local: build-django-base
	cd ops/local/; docker build -t="zhongpei/django-local" .

django-gunicorn-nginx: build-django-base
	cd ops/django-gunicorn-nginx/; docker build -t="zhongpei/django-gunicorn-nginx" .


build:django-gunicorn-nginx build-local
	echo "ok"

run-local: build-local
	docker run -P -t -i -v $(CURDIR)/app:/opt/app zhongpei/django-local

run-deploy:django-gunicorn-nginx
	docker run -P -t -i -v $(CURDIR)/app:/opt/app zhongpei/django-deploy
