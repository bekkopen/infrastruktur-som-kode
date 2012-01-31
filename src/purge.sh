#!/bin/sh

set -e

apt-get purge nginx -y

rm -rf /etc/nginx /var/www
