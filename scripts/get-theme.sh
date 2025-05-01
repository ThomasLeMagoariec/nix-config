#!/usr/bin/env bash

# Path to your theme file
theme_file="./theme.txt"

if [ -f "$theme_file" ]; then
  theme=$(cat "$theme_file")
  echo "Current theme: $theme"
else
  echo "No theme file found."
fi
