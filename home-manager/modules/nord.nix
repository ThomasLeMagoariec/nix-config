{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/theme.conf".source = ../dotfiles/hypr/nord.conf;
    };

}

