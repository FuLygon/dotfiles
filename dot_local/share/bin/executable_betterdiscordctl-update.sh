#!/bin/bash
killall Discord
betterdiscordctl install
/usr/bin/discord --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime </dev/null &>/dev/null &

