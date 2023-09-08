#!/bin/bash
CRYPTSETUP=/usr/lib/systemd/systemd-cryptsetup
if [ ! $(whoami) == "root" ]; then
    echo "Run as root."
    exit 1
fi

if [ ! $# = 2 ]; then
    cat << _EOT_
Usage: $(basename $0) name device
_EOT_
    exit 1
fi

NAME=$1
DEVICE=$2

if $CRYPTSETUP attach $NAME $DEVICE - fido2-device=auto; then
    ls -l /dev/mapper/$NAME
fi

