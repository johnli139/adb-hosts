#!/bin/bash
parted --script /dev/vdb \
    mklabel gpt \
    unit s \
    mkpart data1 2048s 100%
sleep 5
mkfs -t xfs /dev/vdb1
mkdir /data1
mount /dev/vdb1 /data1
echo UUID=$(lsblk --fs | grep vdb1 | awk -F" " '{ print $3}') /data1 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdc \
    mklabel gpt \
    unit s \
    mkpart data2 2048s 100%
sleep 5
mkfs -t xfs /dev/vdc1
mkdir /data2
mount /dev/vdc1 /data2
echo UUID=$(lsblk --fs | grep vdc1 | awk -F" " '{ print $3}') /data2 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdd \
    mklabel gpt \
    unit s \
    mkpart data3 2048s 100%
sleep 5
mkfs -t xfs /dev/vdd1
mkdir /data3
mount /dev/vdd1 /data3
echo UUID=$(lsblk --fs | grep vdd1 | awk -F" " '{ print $3}') /data3 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vde \
    mklabel gpt \
    unit s \
    mkpart data4 2048s 100%
sleep 5
mkfs -t xfs /dev/vde1
mkdir /data4
mount /dev/vde1 /data4
echo UUID=$(lsblk --fs | grep vde1 | awk -F" " '{ print $3}') /data4 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdf \
    mklabel gpt \
    unit s \
    mkpart data5 2048s 100%
sleep 5
mkfs -t xfs /dev/vdf1
mkdir /data5
mount /dev/vdf1 /data5
echo UUID=$(lsblk --fs | grep vdf1 | awk -F" " '{ print $3}') /data5 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdg \
    mklabel gpt \
    unit s \
    mkpart data6 2048s 100%
sleep 5
mkfs -t xfs /dev/vdg1
mkdir /data6
mount /dev/vdg1 /data6
echo UUID=$(lsblk --fs | grep vdg1 | awk -F" " '{ print $3}') /data6 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdh \
    mklabel gpt \
    unit s \
    mkpart data7 2048s 100%
sleep 5
mkfs -t xfs /dev/vdh1
mkdir /data7
mount /dev/vdh1 /data7
echo UUID=$(lsblk --fs | grep vdh1 | awk -F" " '{ print $3}') /data7 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdi \
    mklabel gpt \
    unit s \
    mkpart data8 2048s 100%
sleep 5
mkfs -t xfs /dev/vdi1
mkdir /data8
mount /dev/vdi1 /data8
echo UUID=$(lsblk --fs | grep vdi1 | awk -F" " '{ print $3}') /data8 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdj \
    mklabel gpt \
    unit s \
    mkpart data9 2048s 100%
sleep 5
mkfs -t xfs /dev/vdj1
mkdir /data9
mount /dev/vdj1 /data9
echo UUID=$(lsblk --fs | grep vdj1 | awk -F" " '{ print $3}') /data9 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdk \
    mklabel gpt \
    unit s \
    mkpart data10 2048s 100%
sleep 5
mkfs -t xfs /dev/vdk1
mkdir /data10
mount /dev/vdk1 /data10
echo UUID=$(lsblk --fs | grep vdk1 | awk -F" " '{ print $3}') /data10 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdl \
    mklabel gpt \
    unit s \
    mkpart data11 2048s 100%
sleep 5
mkfs -t xfs /dev/vdl1
mkdir /data11
mount /dev/vdl1 /data11
echo UUID=$(lsblk --fs | grep vdl1 | awk -F" " '{ print $3}') /data11 xfs defaults 0 2 >> /etc/fstab

parted --script /dev/vdm \
    mklabel gpt \
    unit s \
    mkpart data12 2048s 100%
sleep 5
mkfs -t xfs /dev/vdm1
mkdir /data12
mount /dev/vdm1 /data12
echo UUID=$(lsblk --fs | grep vdm1 | awk -F" " '{ print $3}') /data12 xfs defaults 0 2 >> /etc/fstab

umount /dev/vdb1
umount /dev/vdc1
umount /dev/vdd1
umount /dev/vde1
umount /dev/vdf1
umount /dev/vdg1
umount /dev/vdh1
umount /dev/vdi1
umount /dev/vdj1
umount /dev/vdk1
umount /dev/vdl1
umount /dev/vdm1

mount -a
mount | grep data
