#!/usr/bin/env bash


echo "🏡 Rebuilding Home Manager for user 'thomas' with 'catppuccin' theme..."
home-manager switch --flake ../home-manager#catppuccin

pkill hyprpaper && hyprctl dispatch exec hyprpaper
pkill waybar && hyprctl dispatch exec waybar
