#!/bin/bash

DEF_START=65
DEF_STOP=80
function SUDO() {
    if [ $(whoami) = "root" ]; then
        $@
    else
        sudo su - -c "$*"
    fi
}

function show_menu() {
    echo "0: バッテリーのステータス"
    echo "1: 充電開始と終了の編集"
    echo "2: フルチャージ"
    echo "3: Set default"
}

show_menu
echo -n "Select: "
read OPTION

case $OPTION in
    "0" )
        SUDO tlp-stat -b
        ;;
    "1" )
        echo -n "充電開始(%): "
        read START_CHARGE
        echo -n "充電終了(%): "
        read END_CHARGE
        echo -n "Battery BAT[0-1]: "
        read $BATTERY
        SUDO tlp setcharge $START_CHARGE $END_CHARGE $BATTERY
        ;;
    "2" )
        SUDO tlp fullcharge
        ;;
    "3" )
        echo "Set default BAT0"
        SUDO tlp setcharge $DEF_START $DEF_STOP BAT0
        ;;
    "?" )
        show_menu ;;
esac



