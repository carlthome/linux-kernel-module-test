#!/bin/sh
set -e

make
sudo insmod hello.ko
lsmod | grep hello
sudo rmmod hello
make clean
