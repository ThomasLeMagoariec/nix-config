{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        flatpak
    ];

    services.flatpak.enable = true;

    systemd.user.services.flatpak-updater = {
        description = "Flatpak app updater";
        serviceConfig = {
            Type = "oneshot";
            ExecStart = "${pkgs.flatpak}/bin/flatpak update -y";
        };
    };

    systemd.user.timers.flatpak-updater = {
        description = "Run daily Flatpak updates";
        wantedBy = [ "timers.target" ];
        timerConfig = {
            OnCalendar = "daily";
            Persistent = true;
        };
    };
}

