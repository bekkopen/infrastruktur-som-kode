#!/bin/sh

set -e

. ./../hostname.sh

if [ $# -ne 1 ]; then
  set_hostname "salt.uggedal.com"
else
  set_hostname "salt-${1}.uggedal.com"
fi

apt-get install -qyt wheezy cython python-zmq python-yaml python-crypto \
  python-m2crypto python-jinja2 msgpack-python python-pip

pip install salt

if [ $# -ne 1 ]; then
  cat > /etc/salt/master << 'EOF'
file_roots:
  base:
    - /root/infrastruktur-som-kode/src/salt/state
EOF
fi

echo "master: salt.uggedal.com" > /etc/salt/minion
