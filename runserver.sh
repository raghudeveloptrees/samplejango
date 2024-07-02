#!/bin/bash

cd /var/lib/jenkins/workspace/samplejango
source antenv/bin/activate
python3 manage.py makemigrations
python3 manage.py migrate --run-syncdb
sudo service gunicorn restart
sudo service nginx restart
gunicorn jango1.wsgi:application --bind=localhost:8000 --daemon
#python3 manage.py runserver 0.0.0.0:8000
