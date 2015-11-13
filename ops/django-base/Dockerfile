FROM FROM gliderlabs/alpine:3.1
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>


RUN apk --update add python py-pip openssl ca-certificates
RUN apk --update add --virtual build-dependencies python-dev build-base wget \
  && pip install -r requirements.txt  -i  http://pypi.douban.com/simple/ \
  && python setup.py install \
  && apk del build-dependencies

