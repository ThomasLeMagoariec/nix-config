
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    obisidian
  ];
}
