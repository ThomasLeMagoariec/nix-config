
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    obsidian
    nautilus
    blueman
  ];
}

