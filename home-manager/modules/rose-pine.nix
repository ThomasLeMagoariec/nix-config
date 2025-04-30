{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/theme.conf".source = ../dotfiles/hypr/wallrose-pine.conf;
        ".config/hypr/wallpaper.png".source = ../dotfiles/hypr/wallpaper-rosepine.png;
        ".config/hypr/lockscreen.png".source = ../dotfiles/hypr/lockscreen-rosepine.png;
    };

}

