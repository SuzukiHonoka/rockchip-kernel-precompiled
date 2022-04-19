#!/bin/sh
KV=KVER
DT=/boot/dtb/rockchip/
#echo "decompressing.."
#unzip Kernel.$KV.zip
echo "copying dtb files.."
cp *dtb $DT -v
echo "installing kernel.."
dpkg -i *deb
echo "overriding current kernel boot image.."
mv ./Image /boot/Image -v
sync
echo "done"
#reboot
