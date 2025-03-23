{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    python3
    python3Packages.pip
    nodejs
  ];
}

