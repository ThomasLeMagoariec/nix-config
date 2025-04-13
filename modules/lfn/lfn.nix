{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        bc
        binutils
        bison
        flex
        gcc
        git
        gnupg24
        gzip
        libelf
        libncurses5-dev
        libssl-dev
        make
        openssl
        pahole
        perl-base
        rsync
        tar
        xz-utils
    ];
}
