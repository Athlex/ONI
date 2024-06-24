#!/bin/bash

echo Adding USB key to LUKS volume /dev/sda3
sleep 1
cryptsetup luksAddKey /dev/sda3 /media/root/KEYS/keyfile
echo editing /etc/crypttab to read USB stick on boot
sleep 1
sed -i 's\none\/dev/disk/by-label/KEYS:/keyfile\g' /etc/crypttab
sed -i 's\discard\keyscript=/lib/cryptsetup/scripts/passdev\g' /etc/crypttab
echo Updating initramfs after modifying /etc/crypttab
sleep 1
update-initramfs -u
echo editing /etc/defualt/grub
sleep 1
sed -i 's\quiet\rd.luks.crypttab=yes luks.crypttab=no\g' /etc/default/grub
echo Updating grub after modifying /etc/default/grub
sleep 1
update-grub
echo Done.
sleep 2
reboot
