{ config, pkgs, ... }:

{

    home.file = {
        ".p10k.zsh".source = ../dotfiles/p10k.zsh;
        ".config/wofi/config".source = ../dotfiles/wofi.config;
        ".bashrc".source = ../dotfiles/.bashrc;

        # hyprland config
        ".config/hypr/hyprland.conf".source = ../dotfiles/hypr/hyprland.conf;
        ".config/hypr/hypridle.conf".source = ../dotfiles/hypr/hypridle.conf;
        ".config/hypr/hyprlock.conf".source = ../dotfiles/hypr/hyprlock.conf;
        ".config/hypr/hyprpaper.conf".source = ../dotfiles/hypr/hyprpaper.conf;

        # bg and stuff
        ".config/hypr/MraeZ5D.png".source = ../dotfiles/hypr/MraeZ5D.png;
        ".config/hypr/clouds.JPG".source = ../dotfiles/hypr/clouds.JPG;
        ".config/hypr/rose_pine_contourline.png".source = ../dotfiles/hypr/rose_pine_contourline.png;
        ".config/hypr/smth_beautiful.jpg".source = ../dotfiles/hypr/smth_beautiful_.jpg;
        ".config/hypr/wallpaper.png".source = ../dotfiles/hypr/wallpaper.png;

        # waybar config
        ".config/waybar/config.jsonc".source = ../dotfiles/waybar/config.jsonc;
        ".config/waybar/network_menu.xml".source = ../dotfiles/waybar/network_menu.xml;
        ".config/waybar/power_menu.xml".source = ../dotfiles/waybar/power_menu.xml;
        ".config/waybar/style.css".source = ../dotfiles/waybar/style.css;

    };

}

