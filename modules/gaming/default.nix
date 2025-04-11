{ config, lib, pkgs, ... }:

{
    imports = [
        ./steam.nix
        ./wine.nix
    ];
}

