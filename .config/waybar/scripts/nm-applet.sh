#!/bin/bash

launch-applet() {
    nm-applet
}

if [[ "$1" == "stop" ]]; then
    killall nm-applet
elif [[ "$1" == "toggle" ]]; then
    if pgrep -x "nm-applet" >/dev/null; then
        killall nm-applet
    else
        launch-applet
    fi
else
    launch-applet
fi