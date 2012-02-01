#!/bin/sh

set -e

mirror="http://ukdebian.mirror.anlx.net/debian/"

echo "deb $mirror squeeze main contrib non-free" > /etc/apt/sources.list
echo "deb $mirror wheezy main contrib non-free" > /etc/apt/sources.list.d/wheezy.list

cat > /etc/apt/apt.conf << 'EOF'
APT {
  Default-Release "squeeze";
  Install-Recommends "false";
};
EOF

apt-get update -q
apt-get dist-upgrade -qy

apt-get install -qy git

if [ ! -d "$HOME/infrastruktur-som-kode" ]; then
  git clone git://github.com/bekkopen/infrastruktur-som-kode.git
fi
