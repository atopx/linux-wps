#!/usr/bin/env bash

set -e

sudo apt-get install -y debhelper patchelf
mkdir wps-365
wget -qO wps-365/wps-365.tar.xz https://github.com/atopx/linux-wps/releases/download/v0.1.0/wps-365.tar.xz --show-progress
cd wps-365
dpkg-buildpackage -us -uc
cd -
rm -rf wps-365*
sudo dpkg -i wps-office*myubuntu_amd64.deb
rm -f wps-office*myubuntu_amd64.deb
