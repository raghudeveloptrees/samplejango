#!/bin/bash

source antenv/bin/activate
pip3 install gunicorn


cd /var/lib/jenkins/workspace/samplejango

sudo cp -rf gunicorn.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
sudo systemctl status gunicorn