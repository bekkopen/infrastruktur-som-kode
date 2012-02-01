#!/bin/sh

pgrep salt-master || salt-master -d
pgrep salt-minion || salt-minion -d

salt '*' state.highstate
