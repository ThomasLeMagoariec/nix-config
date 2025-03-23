{ config, pkgs, ... }:

{
  home.username = "thomas";
  home.homeDirectory = "/home/thomas";

  home.packages = [
    pkgs.hello
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.file = {};

  home.stateVersion = "24.11"; # Please read the comment before changing.
  programs.home-manager.enable = true;
}
