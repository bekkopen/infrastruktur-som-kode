#!/bin/sh

set -e

apt-get update
apt-get dist-upgrade -y

apt-get install git -y
git clone git://github.com/bekkopen/infrastruktur-som-kode.git
