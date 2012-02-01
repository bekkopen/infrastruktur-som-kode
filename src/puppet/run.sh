#!/bin/sh

puppet apply --modulepath=modules -e "include hello"
