{ config, pkgs, lib, ... }:

let 
    theme = "catppuccin";
in
{
    _module.args = {
        theme = theme;
    };

    imports = [
        ../../home-manager/modules
        ../../home-manager/modules/catppuccin.nix
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
        THEME = theme;
    };


    programs.home-manager.enable = true;
}

