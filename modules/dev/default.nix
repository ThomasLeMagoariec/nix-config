{ config, lib, pkgs, ... }:

{
  imports = [
    ./editors.nix
    ./languages.nix
    ./tools.nix
  ];
}

