#!/bin/sh
echo "deb http://hwraid.le-vert.net/debian squeeze main" >> chroot/etc/apt/sources.list
chroot chroot/ aptitude update
chroot chroot/ aptitude install openssh-server hpacucli parted debootstrap e2fsprogs git firmware-bnx2
chroot chroot/ echo "root:toto" | chpasswd 
echo "git clone git://github.com/l0nkaji/install_debian_auto.git && cd install_debian_auto && bash run.sh" > chroot/etc/profile.d/install_pxe.sh
chmod +x chroot/etc/profile.d/install_pxe.sh

