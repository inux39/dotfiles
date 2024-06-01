#!/bin/bash
WORKDIR=$(realpath $(pwd))
P_KETA=${1:-2}

echo "Set keta: $P_KETA"
# xxxxx_p10.yyy のファイルリストを取得する
## xxxxx_pN.yyy を出力、ファイル名変更前に確認
# xxxxx_pN.yyy の N を3ケタ化 → 2ケタにして揃える
LIST=$(find "$WORKDIR" -maxdepth 1 -type f -name "*_p10.*" -printf '%f\n')

for file in $LIST; do
    # (NNNN)_p10.EXT -> NNNN_p*.EXT
    TARGET=$(echo $file | sed -e 's/\([0-9]\+\)_p10.\([a-zA-Z]\+\)/\1_p*\.\2/')
    ls -l $WORKDIR/$file
done

echo -n "Continue? [y/n]: "
read EXEC
if [ $EXEC != "y" ]; then
    exit 0
fi

for file in $LIST; do
    # (NNNN)_p10.EXT -> NNNN_p*.EXT
    TARGET=$(echo $file | sed -e 's/\([0-9]\+\)_p10.\([a-zA-Z]\+\)/\1_p*\.\2/')
    for f in $(find "$WORKDIR" -maxdepth 1 -type f -name "$TARGET" -printf '%f\n'); do
        ## 桁をそろえるために頭に0を追加
        P=$(echo "$f" | sed -e 's/[0-9]\+_*p\([0-9]\+\).[a-zA-Z]\+/0000\1/')
        ## pの桁を2桁にそろえる
        P=$(echo "$P" | sed -e "s/0*\([0-9]\{$P_KETA\}\)/\1/")
        RENAME=$(echo "$f" | sed -e "s/\([0-9]\+_*p\)\([0-9]\+\)\(.[a-zA-Z]\+\)/\1$P\3/")
        if [ $f != $RENAME ]; then
            mv -v $WORKDIR/$f $WORKDIR/$RENAME
        fi
    done
done

