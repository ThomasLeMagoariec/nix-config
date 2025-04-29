
{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        cowsay      # don't question my choices
        lolcat
        neofetch    # for flexing purposes
        eww-wayland
    ];

}

