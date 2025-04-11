{ inputs, config, pkgs, lib, ... }@args:

let
    host = "thomas";
    de = "hyprland";
in
{
    _module.args = {
        host = host;
        de = de;
    };

    imports =
    [
        ./configuration.nix
        ../../modules/dev
        ../../modules/apps
        ../../modules/random
        ../../modules/gaming
    ]
    ++ lib.optional (de == "hyprland") ../../modules/hyprland;

    networking.hostName = "nixos";
    system.stateVersion = "24.11";
}

