FROM alpine:3.2
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>

RUN apk --update add python py-pip openssl ca-certificates
COPY ./requirements.dev.txt /tmp/requirements.txt
RUN apk --update add --virtual build-dependencies python-dev build-base wget \
  && pip install -r /tmp/requirements.txt   \
  && apk del build-dependencies

