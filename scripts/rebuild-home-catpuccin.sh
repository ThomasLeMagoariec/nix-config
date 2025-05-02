#!/usr/bin/env bash


echo "🏡 Rebuilding Home Manager for user 'thomas' with 'catpuccin' theme..."
home-manager switch --flake ../home-manager#catpuccin

pkill hyprpaper && hyprctl dispatch exec hyprpaper
pkill waybar && hyprctl dispatch exec waybar
