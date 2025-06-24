#!/usr/bin/env bash

URL=$(wofi --dmenu --prompt "Enter package:")

# Open in default browser if non-empty
if [[ -n "$URL" ]]; then
    xdg-open "https://search.nixos.org/packages?channel=25.05&from=0&size=50&sort=relevance&type=packages&query=$URL"
fi
