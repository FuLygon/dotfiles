#!/bin/sh

script_dir="$(cd "$(dirname "$0")" >/dev/null 2>&1 && pwd)"
sh "$script_dir/accent.sh"

rofi \
	-show "drun" \
	-modi drun \
	-no-lazy-grab \
	-scroll-method 0 \
	-drun-match-fields all \
	-drun-display-format "{name}" \
	-no-drun-show-actions \
	-kb-cancel Escape \
	-theme "$HOME/.config/rofi/config/launcher.rasi"

