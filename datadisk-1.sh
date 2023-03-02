#!/bin/bash
parted --script /dev/vdb \
    mklabel gpt \
    unit s \
    mkpart data1 2048s 100%
mkfs -t xfs /dev/vdb1
mkdir /data1
mount /dev/vdb1 /data1
echo UUID=$(lsblk --fs | grep vdb1 | awk -F" " '{ print $3}') /data1 xfs defaults 0 2 >> /etc/fstab

umount /dev/vdb1

mount -a
mount | grep data
