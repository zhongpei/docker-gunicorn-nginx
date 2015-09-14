FROM ubuntu:14.04
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>

# keep upstart quiet
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -sf /bin/true /sbin/initctl

# no tty
ENV DEBIAN_FRONTEND noninteractive


# global installs [applies to all envs!]
RUN sed -i 's/archive.ubuntu.com/mirrors.163.com/' /etc/apt/sources.list &&\
apt-get update --fix-missing &&\ 
apt-get install -y build-essential git &&\
apt-get install -y python python-dev python-setuptools python-pip python-virtualenv  &&\
apt-get install -y libjpeg-dev libfreetype6-dev  zlib1g-dev libpng12-dev python-imaging  libmysqlclient-dev &&\
apt-get build-dep -y python-imaging python-psycopg2 &&\
apt-get clean && apt-get purge 

# expose port(s)
# EXPOSE 80
