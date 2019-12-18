#!/bin/sh

HOST=$1
ssh $(vagrant ssh-config $HOST | sed '/^[[:space:]]*$/d' |  awk 'NR>1 {print " -o "$1"="$2}') localhost