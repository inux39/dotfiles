#!/bin/bash
DEF_START=65
DEF_STOP=80
OPTION=${1:-0}
if [ "$(whoami)" != "root" ]; then
    sudo su -c "$0"
    exit 0
fi

function show_menu() {
    echo "0: バッテリーのステータス"
    echo "1: 充電開始と終了の編集"
    echo "2: フルチャージ"
    echo "3: Set default"
}

if [ -z "$1" ]; then
    show_menu
    echo -n "Select: "
    read OPTION
fi

case $OPTION in
    "0" )
        tlp-stat -b
        ;;
    "1" )
        echo -n "充電開始(%): "
        read START_CHARGE
        echo -n "充電終了(%): "
        read END_CHARGE
        echo -n "Battery BAT[0-1]: "
        read $BATTERY
        tlp setcharge $START_CHARGE $END_CHARGE $BATTERY
        ;;
    "2" )
        tlp fullcharge
        ;;
    "3" )
        echo "Set default BAT0"
        tlp setcharge $DEF_START $DEF_STOP BAT0
        ;;
    "?" )
        show_menu ;;
esac



