#!/bin/bash


# Enter the partition you'd like to see here. You can use a tool like "fdisk" to display all of the partitions.
# In my case, I'd like to display the used space of the /nvme0n1p6 partition (partition names tend to vary depending on the disk type you're using).
PARTITION="/nvme0n1p6"


# You can get creative here. This is just a simple prefix variable that will be displayed before the percentile figure of usage.
# This is my configuration, in which I use an icon from Nerd Fonts and the partition I chose above.
PREFIX=$PARTITION


# I found this solution on an online resource - we're making use of "df", "grep" and "awk" to fetch the percentile figure.
# We then echo the output alongisde the prefix.
echo $PREFIX $(df -hl | grep "$PARTITION" | awk '{print $5}')
