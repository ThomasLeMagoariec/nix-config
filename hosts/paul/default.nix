{ inputs, config, pkgs, lib, ... }@args:

let
    host = "paul";
    de = "hyprland";
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
        ../../modules/dev/zsh.nix
    ]
    ++ lib.optional (de == "hyprland") ../../modules/hyprland;

    dev.minimal.enable = true;

    networking.hostName = host;
    system.stateVersion = "24.11";
}

