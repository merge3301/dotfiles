#!/usr/bin/env bash

CONFIG_DIR="$HOME/.config/wlogout"
MARGINS_FILE="$CONFIG_DIR/margins.conf"

if [ ! -f "$MARGINS_FILE" ]; then
    "$CONFIG_DIR/update_margins.sh"
fi

source "$MARGINS_FILE"

wlogout \
    -b 1 \
    -p layer-shell \
    -T "$TOP" \
    -B "$BOTTOM" \
    -L "$LEFT" \
    -R "$RIGHT"
