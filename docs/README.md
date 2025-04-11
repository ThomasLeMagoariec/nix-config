# My NixOS Configuration

## Overview

This repo contains my NixOS Configuration, as well as some of my .dotfiles

## Folder Structure

- `home-manager/`: contains my home-manager modules and .dotfiles
- `hosts/`: contains different settings for different machines
- `modules/`: modules used within my config
- `scripts/`: helper scripts mainly for rebuilding and cleaning
- `shells/`: useful shells I use regularly

## Per-Host Variables

To make my config as modular as possible I declare 3 variables per host:
- `host`: username
- `de`: DE/WM (currently the config only has settings for i3 and Hyprland)
- `sh`: shell (currently the config only has settings for zsh and fish)

## Modules

Here is a list of what every (NixOS) module does.

### Apps
This installs useful GUIs such as obsidian for notetaking, a file explorer and a bluetooth manager

### Dev
This is for all the dev tools I use (and also random useful programs), configs for `zsh` and `fish` are located in `dev/shells`.
`dev/minimum.nix` is just what I need if I want to quickly spin up something.

### Gaming
My gaming config, currently there is only Wine and Steam but maybe more in the future

### Hyprland
Packages I need for my Hyprland configuration, the `.dotfiles` are in `home-manager/dotfiles`

### Random
Packages that I haven't sorted or that are just there for fun.

### System
This just debloats my `configuration.nix` file


## Hosts

I currently have 3 hosts:
    - `thomas`: my daily config
    - `paul`: config for a friend just using NixOS for a project
    - `school`: config for school, mainly uses home-manager because I don't have `sudo` access

you can also use the `nixos` host which I don't recommend as it just reverts to `thomas` and tends to break everything
