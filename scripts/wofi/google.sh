#!/usr/bin/env bash

URL=$(wofi --dmenu --prompt "Enter URL:")

# Open in default browser if non-empty
if [[ -n "$URL" ]]; then
    xdg-open "https://search.brave.com/search?q=$URL"
fi
