#!/bin/sh

# Delete the chezmoi binary
rm -f ~/bin/chezmoi

# Remove the ~/bin directory if it is empty
# we make sure we are in the home directory
cd ~ || exit 1
rmdir -p bin || true
