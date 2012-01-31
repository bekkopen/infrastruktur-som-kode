#!/bin/sh

set -e

echo "deb http://ukdebian.mirror.anlx.net/debian/ squeeze main contrib non-free" > /etc/apt/sources.list
apt-get update
apt-get dist-upgrade -y

apt-get install git -y

if [ ! -d "$HOME/infrastruktur-som-kode" ]; then
  git clone git://github.com/bekkopen/infrastruktur-som-kode.git
fi
