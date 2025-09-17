{ config, lib, pkgs, ... }:

{
    imports = [
      ./minimal.nix
      ./git.nix
  ];

  programs.nix-ld.enable = true;
}

