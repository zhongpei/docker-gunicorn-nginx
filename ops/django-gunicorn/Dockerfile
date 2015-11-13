FROM zhongpei/django-base:2
MAINTAINER Zhong Pei <zhongpei@vip.qq.com>



ADD ./supervisord.conf /etc/supervisord.conf

# start supervisor to run our wsgi server
CMD supervisord -c /etc/supervisord.conf -n

# expose port(s)
EXPOSE 5000
