#!/bin/bash
SERVER=192.168.9.6
_UID=inux39
_GID=infra
#BUF=16384
BUF=8192

OPT="guest,user=$_UID,uid=$_UID,gid=$_GID,rsize=$BUF,wsize=$BUF,cache=none"

if [ ! $(whoami) = "root" ]; then
    echo run as root.
    exit 1
fi

function _mount() {
    _SERVER=$1
    _LOCAL=$2
    if [ $(mount | grep $_LOCAL | wc -l) = 1 ]; then
        umount $_LOCAL
        echo "[RT=$?] $_SERVER is already mounted. umount $_LOCAL"
    fi
    if [ -e $_LOCAL ]; then
        install -d -m 777 $_LOCAL
    fi
    mount $_SERVER $_LOCAL -o $OPT
    echo "[RC=$?] mount $_SERVER to $_LOCAL"
}

_mount //$SERVER/share100 /mnt/share100

