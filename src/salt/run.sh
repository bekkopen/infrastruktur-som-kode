#!/bin/sh

pgrep salt-master > /dev/null 2>&1 || salt-master -d
pgrep salt-minion > /dev/null 2>&1 || salt-minion -d

salt '*' state.highstate
