{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        flatpak
    ];

    services.flatpak.enable = true;

    systemd.user.services.flatpak-updater = {
        description = "Flatpak app updater";
        serviceConfig.ExecStart = "${pkgs.flatpak}/bin/flatpak update -y";
        timerConfig.OnCalendar = "daily";
        wantedBy = [ "timers.target" ];
    };
}

