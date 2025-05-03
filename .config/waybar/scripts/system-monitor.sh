launch_monitor() {
    kitty --class floating-kitty -e htop
}

if [[ "$1" == "stop" ]]; then
    killall htop
elif [[ "$1" == "toggle" ]]; then
    if pgrep -x "htop" >/dev/null; then
        killall htop
    else
        launch_monitor
    fi
else
    launch_monitor
    fi
fi