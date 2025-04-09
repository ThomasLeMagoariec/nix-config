{ config, pkgs, ... }:

{
    home.username = "thomas";
    home.homeDirectory = "/home/thomas";

    home.stateVersion = "24.11"; # Please read the comment before changing.

    home.packages = [
    ];

    home.file = {
    };

    home.sessionVariables = {
        EDITOR = "nvim";
    };

    programs = {
        zsh = {
            enable = true;
        };
    };


    programs.home-manager.enable = true;
}
