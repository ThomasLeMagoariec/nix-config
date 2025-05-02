{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/theme.conf".source = ../dotfiles/hypr/catppuccin.conf;
        ".config/hypr/wallpaper.png".source = ../dotfiles/hypr/wallpaper-catppuccin.png;
        ".config/hypr/lockscreen.png".source = ../dotfiles/hypr/lockscreen-catppuccin.png;
        ".config/hypr/hyprlock.conf".source = ../dotfiles/hypr/hyprlock-catppuccin.conf;
        ".config/waybar/style.css".source = ../dotfiles/waybar/style-catppuccin.css;
    };

}

