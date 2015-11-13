FROM alpine:3.2
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>



RUN apk add --update \
    python \
	python-dev \
	py-pip \
	build-base \
	&& pip install virtualenv \
	&& rm -rf /var/cache/apk/*
