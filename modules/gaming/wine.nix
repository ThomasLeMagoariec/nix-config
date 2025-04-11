{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        wineWowPackages.stable;
    ];

    hardware.enable32Bit = true;
}

