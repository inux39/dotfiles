#!/bin/bash
DISK=$1
if ! command -v udisksctl &> /dev/null; then
    exit 1
fi

udisksctl mount -b $DISK

