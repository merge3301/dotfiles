#!/usr/bin/env bash

MONITOR_INFO=$(hyprctl -j monitors | jq -r '.[] | select(.focused == true)')

WIDTH=$(echo "$MONITOR_INFO" | jq -r '.width')
HEIGHT=$(echo "$MONITOR_INFO" | jq -r '.height')
SCALE=$(echo "$MONITOR_INFO" | jq -r '.scale')

TOP_PERCENT=0.04
BOTTOM_PERCENT=0.6
LEFT_PERCENT=0.94
RIGHT_PERCENT=0.01

LOGICAL_HEIGHT=$(qalc -t "$HEIGHT / $SCALE")
LOGICAL_WIDTH=$(qalc -t "$WIDTH / $SCALE")

TOP_MARGIN=$(qalc -t "round($LOGICAL_HEIGHT * $TOP_PERCENT)")
BOTTOM_MARGIN=$(qalc -t "round($LOGICAL_HEIGHT * $BOTTOM_PERCENT)")
LEFT_MARGIN=$(qalc -t "round($LOGICAL_WIDTH * $LEFT_PERCENT)")
RIGHT_MARGIN=$(qalc -t "round($LOGICAL_WIDTH * $RIGHT_PERCENT)")
echo $TOP_MARGIN
echo $BOTTOM_MARGIN
echo $LEFT_MARGIN
echo $RIGHT_MARGIN
wlogout \
    -b 1 \
    -p layer-shell \
    -T "$TOP_MARGIN" \
    -B "$BOTTOM_MARGIN" \
    -L "$LEFT_MARGIN" \
    -R "$RIGHT_MARGIN"
