#!/bin/bash
if [ "$(whoami)" != "root" ]; then
    sudo -Es "$(realpath "$0")" "$@"
    exit 0
fi

IPADDR="$(hostname -i)"
VIA="${IPADDR%.*}.1"
if [ "$(ip route | grep "192.168.0.0/16" | wc -l)" != 0 ]; then
    exit 0
fi
CMD="ip route add 192.168.0.0/16 via $VIA"
echo -n "RUN '$CMD' [y/n]:"
read CONTINUE
if [ $CONTINUE = "y" ]; then
    echo "$CMD" | bash
fi

