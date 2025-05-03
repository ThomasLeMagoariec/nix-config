{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/theme.conf".source = ../dotfiles/hypr/nord.conf;
        ".config/hypr/wallpaper.png".source = ../dotfiles/hypr/static/wallpaper-nord.png;
        ".config/hypr/lockscreen.png".source = ../dotfiles/hypr/static/lockscreen-nord.png;
        ".config/hypr/hyprlock.conf".source = ../dotfiles/hypr/hyprlock-nord.conf;
        ".config/waybar/style.css".source = ../dotfiles/waybar/style-nord.css;
    };

}

