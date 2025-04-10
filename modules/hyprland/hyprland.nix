{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  environment.systemPackages = with pkgs; [
    hyprpaper               # Wallpaper manager
    hyprlock                # Lock screen
    hypridle                # Idle management
    waybar                  # Status bar
    swaynotificationcenter  # notifications
    hyprshot                # screenshots
  ];

  # Enable seatd (Wayland session manager)
  services.seatd.enable = true; # no actuall clue what this does, probably came from ChatGPT
}

