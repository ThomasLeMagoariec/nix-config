{ config, pkgs, ... }:

{
    home.file = {
        ".config/hypr/theme.conf".source = ../dotfiles/hypr/rose-pine.conf;
        ".config/hypr/wallpaper.png".source = ../dotfiles/hypr/static/wallpaper-rosepine.png;
        ".config/hypr/lockscreen.png".source = ../dotfiles/hypr/static/lockscreen-rosepine.png;
        ".config/hypr/hyprlock.conf".source = ../dotfiles/hypr/hyprlock-rosepine.conf;
        ".config/waybar/style.css".source = ../dotfiles/waybar/style-rosepine.css;
        ".config/wofi/style.css".source = ../dotfiles/wofi/style-rosepine.css;
        ".config/kitty/themes/theme.conf".source = ../dotfiles/kitty/rosepine.conf;
    };

}

