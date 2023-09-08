#!/bin/bash
SOURCE="https://downloads.nordcdn.com/configs/archives/servers/ovpn.zip"
AUTH_FILE="/etc/openvpn/client/nordvpn"

if [ ! -e "$AUTH_FILE" ]; then
    echo "Authentication key file not exists."
    exit 1
fi

function EXEC() {
    if $@; then
        echo [Ok]: $@
    else
        echo [Err]: $@
        exit 1
    fi
}

EXEC curl -O $SOURCE
EXEC unzip ovpn.zip "ovpn_udp/*.ovpn"
EXEC mv ovpn_udp nordvpn
EXEC rm -v ovpn.zip

EXEC sed -i -e "s;auth-user-pass;auth-user-pass $AUTH_FILE;g" nordvpn/*.ovpn

