#!/usr/bin/env bash

URL=$(wofi --dmenu --prompt "Enter URL:")

# Open in default browser if non-empty
if [[ -n "$URL" ]]; then
    xdg-open "https://www.google.com/search?q=$URL"
fi
