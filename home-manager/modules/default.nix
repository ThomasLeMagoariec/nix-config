{ config, lib, pkgs, theme, ... }:

{
    imports = [
        ./zsh.nix
        ./dotfiles.nix
        ./nixvim
    ];
}

