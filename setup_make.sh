#!/bin/bash
# should work on Linux, Mac, Windows Subsystem for Linux, Cygwin
# requires libncurses-dev

set -e

(
cver=3.9.0-rc5

wd=$(mktemp -d)
wget -nc -P $wd https://cmake.org/files/v${cver:0:3}/cmake-$cver.tar.gz
cd $wd
tar -xf cmake-$cver.tar.gz
./cmake-$cver/configure
make -j7
sudo make install
echo "reopen a new terminal to use CMake $cver"
)
