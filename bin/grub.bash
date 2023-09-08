#!/bin/bash

grub-mkconfig -o /boot/grub/grub.cfg

mount -o rw,remount /sys/firmware/efi/efivars
grub-install --target=$(uname -m)-efi --efi-directory=/boot --bootloader=grub
mount -o ro,remount /sys/firmware/efi/efivars

