{ config, lib, pkgs, ... }:

{
    imports = [
        ./editors.nix
        ./languages.nix
        ./git.nix
        ./tools.nix
        ./utilities.nix
        ./shells/zsh.nix
        ./grub.nix
        ./strongswan.nix
  ];

  programs.nix-ld.enable = true;
}

