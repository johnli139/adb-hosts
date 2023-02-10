#!/bin/bash
(echo g; echo n; echo ""; echo ""; echo ""; echo w) | fdisk /dev/vdb
mkfs.xfs /dev/vdb1
echo $(lsblk -o +uuid | grep vdb1 | awk '{print $7}') /data1 xfs defaults 0 2 >> /etc/fstab
