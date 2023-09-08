#!/bin/bash
LENGTH=${1:-32}
cat /dev/random | base64 | cut -c -"$LENGTH" | head -n 1

