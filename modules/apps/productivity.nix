
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    obsidian # note taking app
    nautilus # file explorer
    blueman  # bluetooth manager gui
  ];
}

