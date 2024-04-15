#!/bin/bash
while [[ ! $(pgrep plasmashell) ]]; do
    sleep 1;
done
sleep 2
for WID in $(xwininfo -root -tree | sed '/"plasmashell": ("plasmashell" "plasmashell")/!d; s/^  *\([^ ]*\) .*/\1/g'); do
    xprop -id $WID -remove _KDE_NET_WM_SHADOW
done