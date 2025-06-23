#!/usr/bin/env bash

# Show custom options in wofi
CHOICE=$(echo -e "rosé-pine\ncatppuccin\nnord" | wofi --dmenu --prompt "Choose theme:")

case "$CHOICE" in
    rosé-pine)
        cd .. && ./rebuild-home-rosepine.sh && notify-send "Rosé Pine!";;
    catppuccin)
        cd .. && ./rebuild-home-catppuccin.sh && notify-send "Catppuccin!";;
    nord)
        cd .. && ./rebuild-home-nord.sh && notify-send "Nord!";;
    *)
        exit 1 ;;  # in case of no selection or exit
esac

