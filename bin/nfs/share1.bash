#!/bin/bash
SERVER=nfs.inux39.me
. $(cd $(dirname $0); pwd)/libnfs.bash
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
    mount -t nfs -o $OPTION $_SERVER $_LOCAL
    echo "[RC=$?] mount $_SERVER to $_LOCAL"
}

_mount $SERVER:/share100 /mnt/share1
_mount $SERVER:/share200 /var/cache/pacman

