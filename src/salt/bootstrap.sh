#!/bin/sh

set -e

. ./../hostname.sh
set_hostname "salt.uggedal.com"

apt-get install -qyt wheezy cython python-zmq python-yaml python-crypto \
  python-m2crypto python-jinja2 msgpack-python python-pip

pip install salt

cat > /etc/salt/master << 'EOF'
interface: 127.0.0.1
auto_accept: True
file_roots:
  base:
    - /root/infrastruktur-som-kode/src/salt/state
EOF

echo "master: localhost" > /etc/salt/minion
