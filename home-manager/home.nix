{ config, pkgs, ... }:

{
    imports = [
        ./modules
    ];

    home.username = "thomas";
    home.homeDirectory = "/home/thomas";

    home.stateVersion = "24.11";

    home.packages = with pkgs; [
        wofi
        zsh
    ];


    home.sessionVariables = {
        EDITOR = "nvim";
    };

    programs = {
        wofi.enable = true;
    };

    programs.home-manager.enable = true;
}

