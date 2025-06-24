#!/usr/bin/env bash

# Show custom options in wofi
CHOICE=$(echo -e "CRI\nGoogle\nNixPkgs\nTheme menu\nBuild menu" | wofi --dmenu --prompt "choose service")

case "$CHOICE" in
    CRI)
        ./stalk.sh;; 
    Google)
        ./google.sh;;
    NixPkgs)
        ./nixpkgs.sh;;
    "Theme menu")
        ./choose-theme.sh;;
    "Build menu")
        ./choose-rebuild.sh;;
    *)
        exit 1 ;;  # in case of no selection or exit
esac

