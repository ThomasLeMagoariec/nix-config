{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/theme.conf".source = ../dotfiles/hypr/rose-pine.conf;
    };

}

