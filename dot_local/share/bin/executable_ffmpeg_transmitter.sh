#!/bin/bash

sink_exists() {
  pactl list sinks | grep -q "Sink Name: Remote"
}

if ! sink_exists; then
  pactl load-module module-null-sink sink_name=Remote
fi

ffmpeg -f pulse -i "Remote.monitor" -ac 2 -acodec pcm_s16le -ar 48000 -f u32le "udp://$1:18181"
