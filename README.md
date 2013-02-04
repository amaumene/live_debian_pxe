# live_debian_pxe
===============

## Scripts to create a Live Debian and use it in our PXE

This scripts is used to create a Debian Live and use it to boot new servers in PXE.

I add the add_stuff.sh script to customize things during the interactive shell pause.

I add this packages on the Live:
* hpacucli
* parted
* debootstrap
* e2fsprogs
* git
* firmware-bnx2

I also set the root password to "toto".

At the end I add a git clone on my debootstrap script repo, and I run it.

To use it you have to:
lb build
wait to the interactive shell
run add_stuff.sh
copy files to your PXE/DHCP/TFTP/NFS server :)
