{ config, pkgs, ... }:

let 
    theme = "rose-pine";
in
{
    imports = [
        ../../home-manager/modules
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


    programs.home-manager.enable = true;
}

