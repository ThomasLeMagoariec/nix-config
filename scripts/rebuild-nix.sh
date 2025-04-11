#!/usr/bin/env bash

# Check for host argument
if [ -z "$1" ]; then
  echo "❌ Usage: $0 <hostname>"
  exit 1
fi


echo "🪄Rebuilding NixOS for host '$1'..."
sudo nixos-rebuild switch --flake ../#${1}
