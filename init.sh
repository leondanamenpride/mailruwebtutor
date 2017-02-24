#!/usr/bin/env bash

sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s ~/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf ~/web/etc/guni.py   /etc/gunicorn.d/guni.py
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start