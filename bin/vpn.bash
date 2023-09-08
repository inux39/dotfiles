#!/bin/bash
if [ ! $(whoami) == "root" ]; then
    echo "Run as root."
    exit 1
fi
ip route add 192.168.0.0/16 via 192.168.10.1
ip route

