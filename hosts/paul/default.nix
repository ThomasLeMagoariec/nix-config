{ inputs, config, pkgs, lib, ... }@args:

let
    host = "paul";
    de = "i3";
in
{
    _module.args = {
        host = host;
        de = de;
    };

    imports =
    [
        ../../configuration.nix
        ../../modules/dev/minimal.nix
    ]
    ++ lib.optional (de == "hyprland") ../../modules/hyprland;

    networking.hostName = host;
    system.stateVersion = "24.11";
}

