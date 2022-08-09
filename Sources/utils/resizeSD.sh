# script for lazy ass guy to resize storage after his installs
# replace mmcblk0 with the correct block name else shit might break
# default block device is mmcblk1p2 , you fuckmo.
#!/bin/bash
START_SECTOR=`cat /sys/block/mmcblk0/mmcblk0p1/start`
fdisk /dev/mmcblk0  << EOF
d
n
p
1
$START_SECTOR
 
w

EOF

echo -e "\n\n\n
\n============================================================"
echo "!!!!!expanding rootfs done! reboot the fucking board now "
echo "!!!!!then run command "resize2fs  /dev/mmcblk0p1" "
echo -e "=============================================================\n\n\n"