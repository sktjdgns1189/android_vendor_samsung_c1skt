#!/sbin/sh
device="`getprop ro.hardware`"
if [ $device == "SHV-E210S" ]; then
    dd if=/dev/zero of=/dev/block/mmcblk0p7
    cat /system/modem/modem_c1skt.bin > /dev/block/mmcblk0p7
elif [ $device == "SHV-E210K" ]; then
    dd if=/dev/zero of=/dev/block/mmcblk0p7
    cat /system/modem/modem_c1ktt.bin > /dev/block/mmcblk0p7
fi

rm -rf /system/modem
