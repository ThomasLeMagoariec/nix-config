{ config, lib, pkgs, ... }:

{
    imports = [
      ./minimal.nix
      ./git.nix
  ];

  options.dev.minimal.enable = true;
  programs.nix-ld.enable = true;
}

