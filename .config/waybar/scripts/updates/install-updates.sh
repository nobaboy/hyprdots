#!/bin/bash

# Prompt the user for update confirmation
read -rp "Updates are available. Do you want to install them now? [Y\n] " confirm
confirm="${confirm,,}" # Convert to lowercase

if [[ "$confirm" != "n" ]]; then
    echo
    yay -Syu

    echo
    echo "Updates complete!"
    read -n 1 -s -r -p "Press any key to continue..."
else
    echo
    echo "Updates cancelled..."
    sleep 1
fi