{ inputs, config, pkgs, lib, ... }:

{
  imports = [
    ../../modules/apps/default.nix
    ../../modules/dev/default.nix
    # Add more modules here
  ];

  networking.hostName = "paul";
  system.stateVersion = "24.11"; # change accordingly
}

