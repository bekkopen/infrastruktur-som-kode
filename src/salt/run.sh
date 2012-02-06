#!/bin/sh

if [ -f /etc/salt/master ]; then
  pgrep salt-master > /dev/null 2>&1 || salt-master -d
fi
pgrep salt-minion > /dev/null 2>&1 || salt-minion -d

if [ -f /etc/salt/master ]; then
  time salt '*' state.highstate -t 60
fi
