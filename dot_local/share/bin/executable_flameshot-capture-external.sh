#!/bin/bash

if command -v xrandr >/dev/null 2>&1; then
    # Get connected outputs using xrandr
    connected_outputs=$(xrandr --query | grep connected | wc -l)
    
    # Check for HDMI in the output names
    if [[ $connected_outputs -eq 2 ]]; then
        flameshot screen -n 1 $1
    else
        flameshot screen -n 0 $1
    fi
else
    flameshot screen -n 0 $1
fi