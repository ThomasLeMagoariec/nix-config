# shell.nix
{ pkgs ? import <nixpkgs> {} }:

let
    pkgConfig = pkgs.pkg-config;
    gettext = pkgs.gettext;
    pkgM4Path = "${pkgConfig}/share/aclocal";
    gettextM4Path = "${gettext}/share/aclocal";
in

pkgs.mkShell {
    buildInputs = with pkgs; [
        elfutils
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
        autoconf-archive
        libtool
    ];

    nativeBuildInputs = with pkgs; [
        pkg-config
    ];

    shellHook = ''
        export FORCE_UNSAFE_CONFIGURE=1
        export CONFIG_SHELL=${pkgs.bash}/bin/bash
        export LFN=/home/thomas/coding/lfs/root
        export ACLOCAL_PATH=${pkgM4Path}:${gettextM4Path}
    '';
}

