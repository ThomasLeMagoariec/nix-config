#!/usr/bin/env bash

# Show custom options in wofi
CHOICE=$(echo -e "CRI\nGoogle" | wofi --dmenu --prompt "choose theme")

case "$CHOICE" in
    CRI)
        ./stalk.sh;; 
    Google)
        ./google.sh;;
    *)
        exit 1 ;;  # in case of no selection or exit
esac

