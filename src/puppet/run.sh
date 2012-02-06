#!/bin/sh

TIME=Time:\ %e time puppet apply --modulepath=modules -e "include hello"
