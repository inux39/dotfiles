#!/bin/bash
KEYFILE=~/.ssh/common-2023
sshfs inux39@tamade.inux39.me:/exports /mnt/array0 -o allow_other -o IdentityFile=$KEYFILE

