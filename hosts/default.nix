{ config, pkgs, ... }:

{
  imports = [
    ../modules/dev
    ../modules/hyprland
    ../modules/tools.nix
    ../modules/apps
    ../modules/home-manager
    ../modules/random
  ];

  # Common settings
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}

