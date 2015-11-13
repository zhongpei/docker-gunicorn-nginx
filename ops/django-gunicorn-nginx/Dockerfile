FROM zhongpei/django-base:2
MAINTAINER zhongpei 

#install nginx supervisor

RUN apk --update add nginx 





# file management, everything after an ADD is uncached, so we do it as late as
# possible in the process.
ADD ./supervisord.conf /etc/supervisord.conf
ADD ./nginx.conf /etc/nginx/nginx.conf


# start supervisor to run our wsgi server
CMD supervisord -c /etc/supervisord.conf -n

# expose port(s)
EXPOSE 80
