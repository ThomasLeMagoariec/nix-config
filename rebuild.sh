#!/usr/bin/env bash

set -e

# Check for host argument
if [ -z "$1" ]; then
  echo "❌ Usage: $0 <hostname>"
  exit 1
fi

HOST=$1
USERNAME=$(whoami)

echo "🔄 Updating flake inputs..."
nix flake update

echo "🛠 Rebuilding NixOS for host '$HOST'..."
sudo nixos-rebuild switch --flake .#${HOST}

echo "🏡 Rebuilding Home Manager for user '$USERNAME'..."
home-manager switch --flake ./home-manager#${USERNAME}

echo "✅ Done rebuilding for host '$HOST' and user '$USERNAME'"

