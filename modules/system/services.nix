{ config, pkgs, ... }:

{
    services = {
        flatpak = { enable = true; };
        xserver = {
            enable = true;
            displayManager.gdm.enable = true;
            desktopManager.plasma6.enable = true;
            windowManager.i3.enable = true;
            xkb = {
                layout = "fr";
                variant = "";
            };
        };

        printing = { enable = true; };
        pulseaudio = { enable = false; };

        pipewire = {
            enable = true;
            alsa = {
                enable = true;
                support32Bit = true;
            };
            pulse = { enable = true; };
        };
        #jack = {
        #    jackd.enable = true;
        #};
    };
}
