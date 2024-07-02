#!/bin/bash

cd /var/lib/jenkins/workspace/samplejango
source antenv/bin/activate
python3 manage.py makemigrations
python3 manage.py migrate
gunicorn jango1.wsgi:application -b 0.0.0.0:8000
#python3 manage.py runserver 0.0.0.0:8000
