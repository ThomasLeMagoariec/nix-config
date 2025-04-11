{ config, pkgs, ... }:

{
    imports = [
        ../../home-manager/modules
    ];

    home.username = "thomas.le-magoariec"; # not sure, should check
    home.homeDirectory = "/home/thomas"; # no clue, need to check

    home.stateVersion = "24.11"; # still no clue

    home.packages = with pkgs; [
        wofi
        zsh
    ];

    home.sessionVariables = {
        EDITOR = "nvim";
    };


    programs.home-manager.enable = true;
}

