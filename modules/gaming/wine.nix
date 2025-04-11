{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        wineWowPackages.stable
    ];


    harware.enableAllFirmware = true;
    hardware.enable32Bit = true;
}

