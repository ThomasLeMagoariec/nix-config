{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        hyprland
        waybar
    ];
}


