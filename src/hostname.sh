#!/bin/sh

set -e

function set_hostname() {
  $hostname=$1
  pub_ip=$(ifconfig eth0 | awk -F':' '/inet addr/{split($2,_," ");print _[1]}')

  echo $hostname > /etc/hostname && hostname -F /etc/hostname
  echo $pub_ip $(hostname) $(hostname -s) >> /etc/hosts
}
