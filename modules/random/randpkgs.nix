
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cowsay
    lolcat
    minecraft
  ];

}

