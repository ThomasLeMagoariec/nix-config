#!/usr/bin/env bash

set -e

echo "🔄 Updating flake inputs..."
nix flake update

echo "🛠 Rebuilding NixOS with flakes..."
sudo nixos-rebuild switch --flake .#nixos

echo "🏡 Rebuilding Home Manager with flakes..."
home-manager switch --flake ./home-manager#thomas

echo "✅ All done!"
