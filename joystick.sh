#!/bin/bash
cd /dev
if result1=$(find js*) ; then
rm js*
fi
if [ -d input ] ; then
sudo rm input/js*
else
mkdir input
fi
if [ -e input/js* ] ; then
rm input/js*
fi
sudo mknod input/js0 c 13 0
sudo mknod input/js1 c 13 1
sudo mknod input/js2 c 13 2
sudo mknod input/js3 c 13 3
sudo ln -s input/js0 js0
sudo ln -s input/js1 js1
sudo ln -s input/js2 js2
sudo ln -s input/js3 js3
if result3=$(find input/event*) ; then
sudo rm input/event0
sudo rm input/event1
sudo rm input/event2
sudo rm input/event3
fi
sudo mknod input/event0 c 13 64
sudo mknod input/event1 c 13 65
sudo mknod input/event2 c 13 66
sudo mknod input/event3 c 13 67 

sudo modprobe joydev
sudo modprobe gamecon map=0,7
