{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    tmux
    ollama
    poetry
    pre-commit
    nwg-displays
    caligula
  ];
}

