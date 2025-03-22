{
  description = "Hyprland configuration module";

  outputs = { nixpkgs, ... }: {
    nixosModules.default = { config, pkgs, ... }: {
      programs.hyprland.enable = true;
      environment.sessionVariables.NIXOS_OZONE_WL = "1";

      services.udev.extraRules = ''
        ACTION=="change", SUBSYSTEM=="drm", RUN+="${pkgs.bash}/bin/bash -c 'sleep 1 && ${pkgs.hyprland}/bin/hyprctl reload'"
      '';

      environment.systemPackages = with pkgs; [
        waybar
        wofi
        hyprpaper
        hyprlock
        hyprshot
        swaynotificationcenter
      ];
    };
  };
}

