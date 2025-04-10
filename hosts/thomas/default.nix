{ inputs, config, pkgs, lib, ... }:

{
    # my config

    imports = [
        ../../configuration.nix
        ../../modules/dev/default.nix
        ../../modules/apps/default.nix
        ../../modules/random/default.nix
        ../../modules/hyprland/default.nix
    ];


    _module.args.hostRole = "thomas";
    
    networking.hostName = "nixos";
    system.stateVersion = "24.11"; 
}
