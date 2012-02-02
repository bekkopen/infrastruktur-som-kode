#!/bin/sh

set -e

. ./../hostname.sh
set_hostname "puppet.uggedal.com"

apt-get install -qy puppet
