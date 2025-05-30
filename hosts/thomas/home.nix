{ config, pkgs, lib, ... }:

let 
    theme = "nord";
in
{
    _module.args = {
        theme = theme;
    };

    imports = [
        ../../home-manager/modules
    ]
    ++ lib.optional (theme == "rose-pine") ../../home-manager/modules/rose-pine.nix
    ++ lib.optional (theme == "nord") ../../home-manager/modules/nord.nix
    ++ lib.optional (theme == "catppuccin") ../../home-manager/modules/catppuccin.nix;

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

