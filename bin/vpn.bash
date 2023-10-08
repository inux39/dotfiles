#!/bin/bash
function SUDO() {
    if [ $(whoami) = "root" ]; then
        $@
    else
        sudo su - -c "$*"
    fi
}

SUDO ip route add 192.168.0.0/16 via 192.168.10.1
SUDO ip route

