#!/bin/bash

# This is the prefix, where you can enter anything. It will display before the version of your kernel.
# Below is my configuration, which uses a Nerd Fonts icon.
PREFIX=

# Here, we output the kernel version. We do that by:
# - First, taking the output of the "hostnamectl" command.
# - We then use "grep" to find the line with the kernel version.
# - Finally, we use "awk" to cut out the non-important text from the line.
echo $PREFIX $(hostnamectl | grep "Kernel" | awk '{print $2, $3}')