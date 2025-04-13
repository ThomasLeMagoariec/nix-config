{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        flex
        bison
        ncurses
        pkg-config
    ];
}
