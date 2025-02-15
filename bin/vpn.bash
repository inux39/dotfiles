#!/bin/bash
if [ "$(whoami)" != "root" ]; then
    sudo bash -c "$0"
    exit 0
fi

ip route
IPADDR="$(hostname -i)"
VIA="${IPADDR%.*}.1"
CMD="ip route add 192.168.0.0/16 via $VIA"
echo -n "RUN '$CMD' [y/n]:"
read CONTINUE
if [ $CONTINUE = "y" ]; then
    echo "$CMD" | bash
fi

