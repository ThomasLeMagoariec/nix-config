#!/usr/bin/env bash

# Check for host argument
if [ -z "$1" ]; then
  echo "❌ Usage: $0 <hostname>"
  exit 1
fi

echo "🏡 Rebuilding Home Manager for user '$1'..."
home-manager switch --flake ../home-manager#${1}

