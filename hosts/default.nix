{ config, pkgs, ... }:

{
  imports = [
    ../modules/dev
    ../modules/hyprland
    ../modules/tools.nix
  ];

  # Common settings
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}

