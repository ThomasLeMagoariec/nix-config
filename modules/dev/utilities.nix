{ config, pkgs, de, ... }:

{
    environment.systemPackages = with pkgs; [
        # utilities
        unzip
        tree
        wget
        xss-lock        
        xorg.xrandr
        pass
        gnupg
        light           # change brightness of screen
        nix-ld          # dynamically link executables
        firefox
        starship
        ncurses
        libnotify
        ffmpeg_6
        open-watcom-v2
        qbittorrent
    ] ++ lib.optionals (de == "i3") [
        i3lock
        i3status
    ];
}
