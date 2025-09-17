#!/usr/bin/env bash

sudo echo "{ config, pkgs, ... }" > /etc/nixos/configuration.nix
sudo echo "{" > /etc/nixos/configuration.nix
sudo echo "  nix.settings.experimental-features = [ \"nix-command\" \"flakes\" ];" > /etc/nixos/configuration.nix
sudo echo "}" > /etc/nixos/configuration.nix

echo Bite
