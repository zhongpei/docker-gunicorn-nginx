FROM zhongpei/django-base
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>

#install nginx supervisor

RUN apt-get install -y supervisor

# stop supervisor service as we'll run it manually
RUN service supervisor stop


RUN pip install supervisor-stdout  -i  http://pypi.douban.com/simple/ 

# file management, everything after an ADD is uncached, so we do it as late as
# possible in the process.
ADD ./supervisord.conf /etc/supervisord.conf


# start supervisor to run our wsgi server
CMD supervisord -c /etc/supervisord.conf -n

# expose port(s)
EXPOSE 5000
