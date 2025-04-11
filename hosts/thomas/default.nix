{ inputs, config, pkgs, lib, ... }:

{
    # my config

    imports = [
        ../../configuration.nix
        ../../modules/dev
        ../../modules/apps
        ../../modules/random
        ../../modules/hyprland
        ../../modules/gaming
    ];

    _module.args = {
        host = "thomas";
    };
    
    networking.hostName = "nixos";
    system.stateVersion = "24.11"; 
}
