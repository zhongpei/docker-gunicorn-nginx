FROM zhongpei/python-base
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>


# create a virtual environment and install all depsendecies from pypi
ADD ./requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt   -i  http://pypi.douban.com/simple/

#mysql python
ADD ./mysql-connector-python_2.0.4-1ubuntu14.04_all.deb /tmp/mysql-connector-python_2.0.4-1ubuntu14.04_all.deb
RUN dpkg -i ./tmp/mysql-connector-python_2.0.4-1ubuntu14.04_all.deb
