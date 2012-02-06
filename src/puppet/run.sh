#!/bin/sh

time puppet apply --modulepath=modules -e "include hello"
