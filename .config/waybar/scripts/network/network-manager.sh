#!/bin/bash

launch-nmtui() {
    kitty --class floating-kitty -e nmtui
}

if [[ "$1" == "stop" ]]; then
    killall nmtui
elif [[ "$1" == "toggle" ]]; then
    if pgrep -x "nmtui" >/dev/null; then
        killall nmtui
    else
        launch-nmtui
    fi
else
    launch-nmtui
fi