{ config, pkgs, lib, ... }:

let 
    theme = "rose-pine";
in
{
    _module.args = {
        theme = theme;
    };

    imports = [
        ../../home-manager/modules
    ]
    ++ lib.optional (theme == "rose-pine") ../../home-manager/modules/rose-pine.nix
    ++ lib.optional (theme == "nord") ../../home-manager/modules/nord.nix;

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

