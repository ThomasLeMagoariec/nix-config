{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        # utilities
        unzip
        tree
        wget
        dmenu           # basically no clue of what the following do
        i3lock          # i think they ended up here when trying to do 
        xss-lock        # auth stuff ?
        xorg.xrandr     # too scared to remove them 
        pass            # so they survive another day
        gnupg
        i3status        # why is there so much i3 stuff ???
        light           # change brightness of screen
        nix-ld          # dynamically link executables
        firefox
    ];
}
