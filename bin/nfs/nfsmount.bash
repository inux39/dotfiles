#!/bin/bash
SCRIPT_PATH=$(cd $(dirname $0); pwd)
PATH_FILE="path.json"

if [ ! -e "$SCRIPT_PATH/$PATH_FILE" ]; then
    echo "Path file is not found."
    exit 1
fi

function NFSMOUNT() {
    _REMOTE="$1"
    _LOCAL="$2"
    _OPTION="$3"
    if [ $(mount | grep "$_LOCAL" | wc -l) -ge 1 ]; then
        sudo umount "$_LOCAL"
        echo "[RC=$?] $_REMOTE is already mounted. umount $_LOCAL"
    fi
    sudo mount -t nfs -o "$_OPTION" "$_REMOTE" "$_LOCAL"
    echo "[RC=$?] mount $_REMOTE $_LOCAL"
}

PATH_JSON=$(<"$SCRIPT_PATH/$PATH_FILE")

if [ $1 = "all" ]; then
    for i in $(echo $PATH_JSON | jq -r '.shortname[].name'); do
        QUERY=".shortname[] | select(.name == \"$i\")"
        PATH_CONF=$(echo $PATH_JSON | jq -r "$QUERY")
        if [ ! -n "$PATH_CONF" ]; then
            echo "$i not found. skip."
            continue
        fi
        HOST=$(echo $PATH_CONF | jq -r '.host')
        REMOTE=$(echo $PATH_CONF | jq -r '.remote_path')
        LOCAL=$(echo $PATH_CONF | jq -r '.local_path')
        OPTION=$(echo $PATH_CONF | jq -r '.option')

        NFSMOUNT $HOST:$REMOTE $LOCAL $OPTION
    done
    exit 0
fi

for i in "$@"; do
    QUERY=".shortname[] | select(.name == \"$i\")"
    PATH_CONF=$(echo $PATH_JSON | jq -r "$QUERY")
    if [ ! -n "$PATH_CONF" ]; then
        echo "$i not found. skip."
        continue
    fi

    HOST=$(echo $PATH_CONF | jq -r '.host')
    REMOTE=$(echo $PATH_CONF | jq -r '.remote_path')
    LOCAL=$(echo $PATH_CONF | jq -r '.local_path')
    OPTION=$(echo $PATH_CONF | jq -r '.option')

    NFSMOUNT $HOST:$REMOTE $LOCAL $OPTION
done

