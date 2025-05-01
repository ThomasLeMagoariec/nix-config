#!/usr/bin/env bash

# Path to your theme file
theme_file="./theme.txt"

if [ -f "$theme_file" ]; then
    theme=$(cat "$theme_file")
    echo "$theme"
else
    # default value
    echo "rose-pine"
fi
