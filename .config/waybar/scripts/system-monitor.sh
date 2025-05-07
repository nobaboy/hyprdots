#!/bin/bash

launch_htop() {
    kitty --class floating-kitty -e htop
}

if [[ "$1" == "stop" ]]; then
    killall htop
elif [[ "$1" == "toggle" ]]; then
    if pgrep -f "htop" >/dev/null; then
        killall htop
    else
        launch_htop
    fi
else
    launch_htop
fi