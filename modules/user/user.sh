#!/bin/bash

# This is the prefix, where you can enter anything. It will display before the name of the current user.
# Below is my configuration, which uses a Nerd Fonts icon.
PREFIX=

# This is likely one of the simplest ones - we're just using the "whoami" command to get the current user!
echo $PREFIX $(whoami)