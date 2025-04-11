#!/usr/bin/env bash

echo "🛠 Rebuilding NixOS for host '$1'..."
sudo nixos-rebuild switch --flake ../#${1}
