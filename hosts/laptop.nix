{ config, pkgs, ... }:

{
  imports = [
    ./default.nix
    ./hardware/laptop-hardware.nix
  ];

  networking.hostName = "my-laptop";

  services.batteryMonitor.enable = true;  # Laptop battery monitoring

  # Enable power management
  services.tlp.enable = true;
}

