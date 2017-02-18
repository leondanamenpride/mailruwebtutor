#!/usr/bin/env bash

sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo gunicorn - b 0.0.0.0:8080 hello:app
sudo /etc/init.d/mysql start