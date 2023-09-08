#!/bin/bash
HARD_OPTION="vers=4,rsize=1048576,wsize=1048576,hard,timeo=200,retrans=2,noresvport"
SOFT_OPTION="vers=4,rsize=1048576,wsize=1048576,soft,timeo=600,retrans=2,noresvport"
OPTION=$HARD_OPTION
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

