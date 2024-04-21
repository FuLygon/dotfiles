#!/bin/bash
set -e

function cleanup {
    pactl unload-module module-null-sink
}

trap cleanup EXIT

if [ -z "$1" ]
then
    echo "Please provide an IP address."
    exit 1
fi

if ! pactl list short sinks | grep  "Remote"; then
    pactl load-module module-null-sink sink_name=Remote
fi


ffmpeg -f pulse -i "Remote.monitor" -ac 2 -acodec pcm_s16le -ar 48000 -f u32le "udp://$1:18181"
