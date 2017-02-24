#!/usr/bin/env bash

sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s ~/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s ~/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn -w 1 -b 0.0.0.0:8000 ask.wsgi
sudo /etc/init.d/mysql start