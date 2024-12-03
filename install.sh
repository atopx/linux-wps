#!/usr/bin/env bash

set -e

sudo apt-get install -y debhelper patchelf
mkdir wps-365
wget -qO wps-365.tar.xz https://github.com/atopx/linux-wps/releases/download/v0.1.0/wps-365.tar.xz --show-progress
tar -Jxvf wps-365.tar.xz -C wps-365
cd wps-365
cat > debian/changelog << EOF
wps-365 (12.8.2.17001-myubuntu) unstable; urgency=medium

  * Fixing oem.ini.

 -- zrqlx126 <zrqlx126@sohu.com>  $(date -R)
EOF
dpkg-buildpackage -us -uc
cd -
rm -rf wps-365*
sudo dpkg -i wps-office*myubuntu_amd64.deb
rm -f *.deb
