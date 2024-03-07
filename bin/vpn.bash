#!/bin/bash
function SUDO() {
    if [ $(whoami) = "root" ]; then
        $@
    else
        sudo su - -c "$*"
    fi
}

SUDO ip route
VIA="192.168.80.1"
echo -n "route add via $VIA [y/n]:"
read CONTINUE
if [ $CONTINUE = "y" ]; then
    SUDO ip route add 192.168.0.0/16 via $VIA
fi

