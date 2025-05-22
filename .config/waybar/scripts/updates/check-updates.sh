#!/bin/bash

UPDATES=$(yay -Qu | wc -l)

if [ "$UPDATES" -eq 0 ]; then
    echo ""
else
    echo "{\"text\": \"$UPDATES\"}"
fi