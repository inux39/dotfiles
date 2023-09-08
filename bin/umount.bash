#!/bin/bash
DISK=$1
if ! command -v udisksctl &> /dev/null; then
    exit 1
fi

udisksctl unmount -b $DISK
echo "Device $DISK poweroff? (y/n):"
read CONT
if [ $CONT = "y" ]; then
    udisksctl power-off -b $DISK
fi


