#!/bin/bash

# This is the prefix! That means it will be displayed in front of the uptime.
# Below is my configuration. It uses a Nerd Fonts icon and just some simple text to tell me what I'm seeing.
PREFIX=羽uptime

# Let me explain how the below works:
# - We first use 'cat' to get the content of /proc/uptime.
# - Then, we use awk and printf to round the time, which we also divide by 3600, which means we get a result in hours.
# - The very last character in the line is the letter "h", which just lets us now the value is in hours. It is purely an aesthetic choice and is symbolic, however it does make the information displayed clearer.
echo $PREFIX $(cat /proc/uptime | awk '{printf "%.2f", $1/3600}')h
