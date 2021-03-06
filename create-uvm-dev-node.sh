#!/bin/sh

# Get the major device number for nvidia-uvm and create the node
echo "Set up NVIDIA UVM"
major=`grep nvidia-uvm /proc/devices | awk '{print $1}'`
if [ -n "$major" ]; then
    mknod -m 666 /dev/nvidia-uvm c $major 0
fi
