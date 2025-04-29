#!/bin/bash

# Check if connected to Wi-Fi
WIFI_SSID=$(iwgetid -r)
if [ -n "$WIFI_SSID" ]; then
    SIGNAL=$(awk 'NR==3 {print int($3 * 100 / 70)}' /proc/net/wireless)
    echo "󰖩 $WIFI_SSID ($SIGNAL%)"
# Check if connected to ethernet
elif [ "$(cat /sys/class/net/eth*/carrier 2>/dev/null)" == "1" ]; then
    echo "󰈀 Connected"
else
    echo "󰖪 Disconnected"
fi
