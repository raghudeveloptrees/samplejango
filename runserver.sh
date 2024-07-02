#!/bin/bash

cd /home/ubuntu/samplejango
python3 manage.py makemigrations
python3 manage.py migrate
gunicorn jango1.wsgi:application -b localhost:8000 &