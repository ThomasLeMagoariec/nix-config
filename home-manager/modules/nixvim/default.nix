{ config, lib, pkgs, ... }:
{
    imports = [
        ./keybindings.nix
        ./options.nix
        ./plugins.nix
    ];

    programs.nixvim = {
        enable = true;
    };
}
