#!/bin/sh

set -e

echo "deb http://apt.opscode.com/ squeeze-0.10 main" > /etc/apt/sources.list.d/opscode.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 83EF826A

apt-get update

apt-get install -y chef
