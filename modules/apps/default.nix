{ config, lib, pkgs, ... }:

{
    imports = [
        ./productivity.nix # not all are productivity, but not worth having 69 files for 
        ./firefox.nix
    ];
}

