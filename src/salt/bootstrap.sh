#!/bin/sh

set -e

apt-get install -qyt wheezy python-zmq python-pip

pip install salt Jinja2
