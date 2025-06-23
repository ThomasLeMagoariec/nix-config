{ config, pkgs, ... }:

{

    home.file = {
        ".config/wofi/config".source = ../dotfiles/wofi/config;
        ".config/wofi/style.css".source = ../dotfiles/wofi/style.css;

        ".bashrc".source = ../dotfiles/.bashrc;
        ".config/starship.toml".source = ../dotfiles/starship/p10k.toml;

        # hyprland config
        #".config/hypr/theme.conf".source = ../dotfiles/hypr/rose-pine.conf;
        ".config/hypr/hyprland.conf".source = ../dotfiles/hypr/hyprland.conf;
        ".config/hypr/hypridle.conf".source = ../dotfiles/hypr/hypridle.conf;
        ".config/hypr/hyprpaper.conf".source = ../dotfiles/hypr/hyprpaper.conf;


        # waybar config
        ".config/waybar/config.jsonc".source = ../dotfiles/waybar/config.jsonc;
        ".config/waybar/network_menu.xml".source = ../dotfiles/waybar/network_menu.xml;
        ".config/waybar/power_menu.xml".source = ../dotfiles/waybar/power_menu.xml;

        #eww config
        ".config/eww/eww.yuck".source = ../dotfiles/eww/eww.yuck;
        ".config/eww/eww.scss".source = ../dotfiles/eww/eww.scss;
        ".config/eww/scripts/get-cpu.sh".source = ../dotfiles/eww/get-cpu.sh;
        ".config/eww/scripts/get-disk.sh".source = ../dotfiles/eww/get-disk.sh;
        ".config/eww/scripts/get-mem.sh".source = ../dotfiles/eww/get-mem.sh;
        ".config/eww/scripts/get-network.sh".source = ../dotfiles/eww/get-network.sh;

    };
}

