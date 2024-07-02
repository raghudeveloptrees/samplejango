#!/bin/bash

cd /home/ubuntu/samplejango

sudo cp -rf samplejango_app.conf /etc/nginx/sites-available/
sudo rm /etc/nginx/sites-enabled/samplejango_app.conf
sudo ln -s /etc/nginx/sites-available/samplejango_app.conf /etc/nginx/sites-enabled/samplejango_app.conf

#changing nginx default port
sudo sed -i 's/80 default_server/81 default_server/g' /etc/nginx/sites-available/default
sudo systemctl reload nginx