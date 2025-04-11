{ config, lib, pkgs, ... }:

{
    imports = [
        ./editors.nix
        ./languages.nix
        ./git.nix
        ./tools.nix
        ./utilities.nix
        ./zsh.nix
  ];
}

