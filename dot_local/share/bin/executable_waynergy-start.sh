#!/bin/bash
set -e

if [ -z "$1" ]
then
    echo "Please provide an IP address."
    exit 1
fi

nohup waynergy -En --backend kde --host $1 > ~/.config/waynergy/daemon.out 2> ~/.config/waynergy/daemon.err &
