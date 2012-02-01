#!/bin/sh

pgrep salt-master > /dev/null || salt-master -d
pgrep salt-minion > /dev/null || salt-minion -d

salt '*' state.highstate
