{ config, lib, pkgs, ... }:

{
  imports = [
    ./editors.nix
    ./languages.nix
    ./git.nix
    ./tools.nix
  ];
}

