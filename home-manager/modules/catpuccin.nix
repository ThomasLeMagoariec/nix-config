{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/theme.conf".source = ../dotfiles/hypr/catpuccin.conf;
        ".config/hypr/wallpaper.png".source = ../dotfiles/hypr/wallpaper-catpuccin.jpg;
        ".config/hypr/lockscreen.png".source = ../dotfiles/hypr/lockscreen-catpuccin.jpg;
        ".config/hypr/hyprlock.conf".source = ../dotfiles/hypr/hyprlock-catpuccin.conf;
        ".config/waybar/style.css".source = ../dotfiles/waybar/style-catpuccin.css;
    };

}

