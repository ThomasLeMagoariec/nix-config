{ config, pkgs, ... }:

{
  imports = [
    ../../modules/apps/default.nix
    ../../modules/dev/default.nix
    # Add other modules as needed
  ];

  networking.hostName = "paul";
  system.stateVersion = "24.11"; # Adjust to your system's version
}

