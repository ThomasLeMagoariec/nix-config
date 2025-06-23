#!/usr/bin/env bash

# Show custom options in wofi
CHOICE=$(echo -e "rosé-pine\ncatppuccin\nnord" | wofi --dmenu --prompt "Choose theme:")

case "$CHOICE" in
    rosé-pine)
        cd .. && ./rebuild-home-rosepine.sh;;
    catppuccin)
        cd .. && ./rebuild-home-catppuccin.sh;;
    nord)
        cd .. && ./rebuild-home-nord.sh;;
    *)
        exit 1 ;;  # in case of no selection or exit
esac

