#!/bin/bash

cd /var/lib/jenkins/workspace/samplejango

$pwd

source antenv/bin/activate
pip3 install gunicorn 

python3 manage.py makemigrations
python3 manage.py migrate

sudo rm /etc/systemd/system/gunicorn.service
sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
sudo systemctl restart gunicorn
sudo systemctl status gunicorn