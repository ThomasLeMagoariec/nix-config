{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/theme.conf".source = ../dotfiles/hypr/catppuccin.conf;
        ".config/hypr/wallpaper.png".source = ../dotfiles/hypr/static/wallpaper-catppuccin.png;
        ".config/hypr/lockscreen.png".source = ../dotfiles/hypr/static/lockscreen-catppuccin.png;
        ".config/hypr/hyprlock.conf".source = ../dotfiles/hypr/hyprlock-catppuccin.conf;
        ".config/waybar/style.css".source = ../dotfiles/waybar/style-catppuccin.css;
        ".config/wofi/style.css".source = ../dotfiles/wofi/style-catppuccin.css;
        ".config/kitty/themes/theme.conf".source = ../dotfiles/kitty/catppuccin.conf;
    };

}

