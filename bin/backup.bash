#!/bin/bash
FILE="$(realpath "$1")"
DATE="$(date +%Y%m%d%H%M%S)"

cp -p "$FILE" "$FILE.$DATE"
ls -l "$FILE" "$FILE.$DATE"

