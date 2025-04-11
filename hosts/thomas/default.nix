{ inputs, config, pkgs, lib, ... }@args:

let
    host = "thomas";
    de = "hyprland";
    sh = "zsh";
in
{
    _module.args = {
        host = host;
        de = de;
        sh = sh;
    };


    imports =
    [
        ../../configuration.nix
        ../../modules/dev
        ../../modules/apps
        ../../modules/random
        ../../modules/gaming
    ]
    ++ lib.optional (de == "hyprland") ../../modules/hyprland
    ++ lib.optional (sh == "fish") ../../modules/dev/shells/fish.nix
    ++ lib.optional (sh == "zsh") ../../modules/dev/shells/zsh.nix;

    networking.hostName = "nixos";
    system.stateVersion = "24.11";
}

