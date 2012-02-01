#!/bin/sh

set -e

apt-get install -qyt wheezy cython python-zmq python-yaml python-crypto \
  python-m2crypto python-jinja2 python-pip

pip install salt
