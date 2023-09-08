#!/bin/bash
SERVER=nfs.inux39.me
. $(cd $(dirname $0); pwd)/libnfs.bash
if [ ! $(whoami) = "root" ]; then
    echo run as root.
    exit 1
fi

_mount $SERVER:/share300/inux39 /home/inux39

