{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
  environment.systemPackages = with pkgs; [
    hyprpaper   # Wallpaper manager
    hyprlock    # Lock screen
    hypridle    # Idle management
    waybar      # Status bar
    wofi
    swaynotificationcenter
    hyprshot
  ];

  # Enable seatd (Wayland session manager)
  services.seatd.enable = true;
}

