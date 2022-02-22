#!/bin/bash

# Enter your github handle here (not your username!).
HANDLE=mattishere

# This is the prefix, where you can enter anything. It will display before the number of repositories.
# Below is my configuration. It uses a Nerd Fonts icon and just some simple text to tell me what I'm seeing.
PREFIX=repos

 
# Here we make use of multiple tools. Let me explain what's going on:
# - First off, we're using "curl" to fetch the GitHub API, as well as adding the "-s" flag to hide the progress bar.
# - After we have fetched the API, we use "grep" to get the data we want ("public_repos").
# - Using "awk", we then only take the integer.
# - Finally, we make use of "tr" to remove the comma.
echo $PREFIX $(curl -s "https://api.github.com/users/$HANDLE" | grep "public_repos" | awk '{print $2}' | tr -d ,)