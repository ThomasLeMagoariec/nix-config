# Common things between NixOS and home-manager

## "Global Variables"

My system uses "global variables" to make it easier to create different [hosts](#Hosts), the variables are: `theme`, `de`, `sh` and `lfn`

The config currently supports 3 themes: `rose-pine`, `nord` and `catppuccin`

The theme variable allows the config to load different dotfiles to make the whole system match. The variable is also used by Nixvim to change my nvim theme accordingly.

## Hosts

Hosts are profiles that include different packages and change settings based on the global variables. The main host is `thomas`, `paul` is a config for a friend and `school` relies on home-manager to be able to install packages without sudo.

## Shells

These are nix-shells that I use somewhat regularly for example `dotnet7` allows me to have a shell with dotnet7 for school projects but still be able to use `omnisharp` which requires dotnet 8

## Scripts

These are utility scripts which allow me to rebuild my system, garbadge collect or even switch themes
