#!/bin/bash
parted --script /dev/vdb \
    mklabel gpt \
    unit s \
    mkpart data1 2048s 100%
mkfs -t xfs /dev/vdb1
mkdir /data1
mount /dev/vdb1 /data1
echo UUID=$(lsblk --fs | grep vdb1 | awk -F" " '{ print $3}') /data1 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdc \
    mklabel gpt \
    unit s \
    mkpart data2 2048s 100%
mkfs -t xfs /dev/vdc1
mkdir /data2
mount /dev/vdc1 /data2
echo UUID=$(lsblk --fs | grep vdc1 | awk -F" " '{ print $3}') /data2 xfs defaults 0 2 >> /etc/fstab

umount /dev/vdb1
umount /dev/vdc1

mount -a
mount | grep data
