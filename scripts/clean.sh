#!/usr/bin/env bash

echo "🗑️ Deleting older verions of NixOS..."
nix-env --delete-generations 5d
nix-store --gc
