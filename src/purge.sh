#!/bin/sh

set -e

apt-get purge nginx

rm -rf /etc/nginx /var/www/*
