{ inputs, config, pkgs, lib, ... }:

{
    # config for a friend 
    # is basically same as mine without hyprland and misc stuff
    
    _module.args = {
        host = "paul";
        de = "i3";
    };

    imports = [
        ../../configuration.nix
        ../../modules/apps
        ../../modules/dev/minimal.nix
    ] ++ lib.optionals (de == "hyprland") [
        ../../modules/hyprland
    ];

    dev.minimal.enable = true;


    networking.hostName = "paul";
    system.stateVersion = "24.11"; 
}

