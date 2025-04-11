{config, pkgs, ... }:

{
    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };

    home.packages = with pkgs; [
        hyprpaper               # Wallpaper manager
        hyprlock                # Lock screen
        hypridle                # Idle management
        waybar                  # Status bar
        swaynotificationcenter  # notifications
        hyprshot                # screenshots
    ];


    services.seatd.enable = true; # no actuall clue what this does, probably came from ChatGPT
}
