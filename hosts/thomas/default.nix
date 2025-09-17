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
    ]

    networking.hostName = "nixos";
    system.stateVersion = "25.05";
}

