#!/bin/bash

cd /var/lib/jenkins/workspace/samplejango

sudo cp -rf samplejango_app.conf /etc/nginx/sites-available/
sudo rm /etc/nginx/sites-enabled/samplejango_app.conf
sudo ln -s /etc/nginx/sites-available/samplejango_app.conf /etc/nginx/sites-enabled/samplejango_app.conf
sudo systemctl reload nginx