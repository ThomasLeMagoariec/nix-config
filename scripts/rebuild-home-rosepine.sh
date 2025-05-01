#!/usr/bin/env bash


echo "🏡 Rebuilding Home Manager for user 'thomas' with 'rose-pine' theme..."
home-manager switch --flake ../home-manager#rose-pine

pkill hyprpaper && hyprctl dispatch exec hyprpaper
pkill waybar && hyprctl dispatch exec waybar
