FROM zhongpei/python-base
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>


# create a virtual environment and install all depsendecies from pypi
RUN virtualenv /opt/venv
ADD ./requirements.txt /opt/venv/requirements.txt
RUN /opt/venv/bin/pip install -r /opt/venv/requirements.txt   -i  http://pypi.douban.com/simple/

