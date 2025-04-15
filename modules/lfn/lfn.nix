{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        flex
        bison
        ncurses
        pkg-config
        elfutils
        libelf
        bc
        autoconf
        automake
        gettext
        gperf
        m4
        libtool
        grub2
        efibootmgr
    ];
}
