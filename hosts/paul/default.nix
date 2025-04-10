{ inputs, config, pkgs, lib, ... }:

{
    # config for a friend 
    # is basically same as mine without hyprland and misc stuff
    
    imports = [
        ../../configuration.nix
        ../../modules/apps/default.nix
        ../../modules/dev/minimal.nix
    ];

    networking.hostName = "paul";
    system.stateVersion = "24.11"; 
}

