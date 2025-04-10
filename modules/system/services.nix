{ config, pkgs, ... }:

{

    services = {
        xserver = {
            enable = true;
            displayManager.gdm.enable = true;
            desktopManager.gnome.enable = true;
            windowManager.i3.enable = true;
            xkb = {
                layout = "fr";
                variant = "";
            };
        };

        printing = { enable = true; };
        pulseaudio = { enable = true; };

        pipewire = {
            enable = true;
            alsa = {
                enable = true;
                support32Bit = true;
            };
            pulse = { enable = true; };
        };
    };
}
