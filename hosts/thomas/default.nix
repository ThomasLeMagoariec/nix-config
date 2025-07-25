{ inputs, config, pkgs, lib, ... }@args:

let
    host = "thomas";
    de = "hyprland";
    sh = "";
    vscode = false;
    lfs = true;
in
{
    _module.args = {
        host = host;
        de = de;
        sh = sh;
        vscode = vscode;
    };


    imports =
    [
        ../../configuration.nix
        ../../modules/dev
        ../../modules/apps
        ../../modules/random
        ../../modules/gaming
        ../../modules/flatpak
    ]
    ++ lib.optional (de == "hyprland") ../../modules/hyprland
    ++ lib.optional (sh == "fish") ../../modules/dev/shells/fish.nix
    ++ lib.optional (sh == "zsh") ../../modules/dev/shells/zsh.nix
    ++ lib.optional lfs ../../modules/lfn;

    networking.hostName = "nixos";
    system.stateVersion = "25.05";
}

