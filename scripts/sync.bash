#!/bin/bash
FROM="$HOME/Downloads"
WORK=$(cd $(dirname $0); pwd)
OPT="-av --progress --fsync --remove-source-files"
rsync $OPT $FROM/*.mp4 $WORK

