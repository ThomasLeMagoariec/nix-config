#!/usr/bin/env bash

echo "🏡 Rebuilding Home Manager for user '$1'..."
home-manager switch --flake ../home-manager#${1}

