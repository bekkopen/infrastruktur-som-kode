#!/bin/sh

set -e

set_hostname() {
  pub_ip=$(ifconfig eth0 | awk -F':' '/inet addr/{split($2,_," ");print _[1]}')

  echo $1 > /etc/hostname && hostname -F /etc/hostname
  echo $pub_ip $(hostname) $(hostname -s) >> /etc/hosts
}
