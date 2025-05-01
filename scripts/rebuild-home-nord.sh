#!/usr/bin/env bash


echo "🏡 Rebuilding Home Manager for user 'thomas' with 'nord' theme..."
home-manager switch --flake ../home-manager#nord

pkill hyprpaper && hyprctl dispatch exec hyprpaper
pkill waybar && hyprctl dispatch exec waybar
