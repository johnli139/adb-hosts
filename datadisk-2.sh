#!/bin/bash
(echo g; echo n; echo ""; echo ""; echo ""; echo w) | fdisk /dev/vdb
mkfs.xfs /dev/vdb1
mkdir /data1
echo UUID=$(lsblk -o +uuid | grep vdb1 | awk '{print $7}') /data1 xfs defaults 0 2 >> /etc/fstab

(echo g; echo n; echo ""; echo ""; echo ""; echo w) | fdisk /dev/vdc
mkdir /data2
mkfs.xfs /dev/vdc1
echo UUID=$(lsblk -o +uuid | grep vdc1 | awk '{print $7}') /data2 xfs defaults 0 2 >> /etc/fstab
