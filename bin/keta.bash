#!/bin/bash
WORKDIR=$(realpath "$(pwd)")
if [ $# -gt 0 ]; then
    _DIR="$(cd "$1"; pwd)" && WORKDIR="$_DIR"
fi

function SEARCH() {
    WORK=$1
    EXEC=$2

    for file in $(find "$WORK" -maxdepth 1 -type f -name "*.*" -printf '%f\n' | sort)
    do
        echo "$file" | grep [0-9] > /dev/null || continue
        PRE_RENAME=$(echo "$file" | sed -e 's/\([0-9]*\)\(\.[a-zA-Z]*\)/00\1\2/')
        RENAME=$(echo "$PRE_RENAME" | sed -e 's/0*\([0-9]\{3\}\)/\1/g')

        if [ $EXEC = "true" ]; then
            if [ "$file" != "$RENAME" ]; then
                mv -v "$WORK/$file" "$WORK/$RENAME"
            fi
        else
            echo "$file to $RENAME"
        fi

    done
}

echo "作業ディレクトリ: $WORKDIR"
echo "作業前のファイル名確認"
SEARCH "$WORKDIR" false
echo
echo -n "Continue? [y/n]: "
read CHECK
if [ $CHECK = "y" ]; then
    SEARCH "$WORKDIR" true
fi

