#!/bin/sh
modprobe msr
wrmsr 0x1FC 2
mkdir /run/media/kafi && sudo mkdir /run/media/kafi/System32
mount /dev/sda4 /run/media/kafi/System32
