#!/usr/bin/env bash

echo "🔄 Updating flake inputs..."
nix flake update --flake ../
