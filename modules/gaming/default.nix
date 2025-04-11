{ config, lib, pkgs, ... }:

{
    imports = [
        ./steam.nix
        ./wine.nix
    ];
    
    environment.systemPackages = with pkgs; [
        prismlauncher
    ];
}

