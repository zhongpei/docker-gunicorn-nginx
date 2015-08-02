docker run --name django-webserver -p 80:80 --link m1-mysql:mysql --link m1-mongo:mongodb   -P -t -i -v /vagrant/webprobe:/opt/app -v /vagrant/static:/opt/app/static zhongpei/django-gunicorn-nginx
