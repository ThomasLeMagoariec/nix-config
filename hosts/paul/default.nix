{ inputs, config, pkgs, lib, ... }@args:

let
    host = "paul";
    de = "i3";
    sh = "fish";
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
        ../../modules/dev/minimal.nix
    ]
    ++ lib.optional (de == "hyprland") ../../modules/hyprland
    ++ lib.optional (sh == "fish") ../../modules/dev/shells/fish.nix
    ++ lib.optional (sh == "zsh") ../../modules/dev/shells/zsh.nix;

    dev.minimal.enable = true;

    networking.hostName = host;
    system.stateVersion = "24.11";
}

