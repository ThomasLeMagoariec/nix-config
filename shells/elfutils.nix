# shell.nix
{ pkgs ? import <nixpkgs> {} }:

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
        libtool
    ];

    nativeBuildInputs = with pkgs; [
        pkg-config
    ];

    shellHook = ''
        export FORCE_UNSAFE_CONFIGURE=1
        export CONFIG_SHELL=${pkgs.bash}/bin/bash
        export LFN=/home/thomas/coding/lfs/root
        export ACLOCAL_PATH="${pkgs.pkg-config}/share/aclocal:${pkgs.gettext}/share/aclocal"

    '';
}

