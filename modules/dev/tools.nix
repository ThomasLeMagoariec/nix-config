{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    tmux
    home-manager
  ];
}

