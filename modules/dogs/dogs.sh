#!/bin/bash

# This is the prefix, where you can enter anything. It will display before the name of a dog breed.
# Below is my configuration, which uses a Nerd Fonts icon.
PREFIX=
 
# This is where we get the random breed. We're making use of Dog CEO, which is an API that can send us a random dog breed.
# This is how it works:
# - First, we use "curl" with a "-s" flag (to hide the progress bar) to fetch the API.
# - Using "json_pp", we format the returned JSON from our request.
# - We then use "grep" to get the line we want.
# - Using "awk", we take the part of the line that has the breed.
# - Finally, we use "tr" to remove the double quotations (") and the comma (,).
echo $PREFIX $(curl -s "https://dog.ceo/api/breeds/list/random" | json_pp | grep "message" | awk '{print $3}' | tr -d ,\")