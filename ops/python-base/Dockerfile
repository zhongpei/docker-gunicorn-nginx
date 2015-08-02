FROM ubuntu:14.04
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>

# keep upstart quiet
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -sf /bin/true /sbin/initctl

# no tty
ENV DEBIAN_FRONTEND noninteractive

#sources mirrors.163.com
RUN sed -i 's/archive.ubuntu.com/mirrors.163.com/' /etc/apt/sources.list

# get up to date
RUN apt-get update --fix-missing

# global installs [applies to all envs!]
RUN apt-get install -y build-essential git
RUN apt-get install -y python python-dev python-setuptools
RUN apt-get install -y python-pip python-virtualenv
RUN apt-get install -y libjpeg-dev libfreetype6-dev  zlib1g-dev libpng12-dev python-imaging 
RUN apt-get install -y libmysqlclient-dev



# build dependencies for postgres and image bindings
RUN apt-get build-dep -y python-imaging python-psycopg2


# expose port(s)
# EXPOSE 80
