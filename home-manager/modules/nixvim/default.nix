{ config, lib, pkgs, ... }:
{
    import = [
        ./keybindins.nix
        ./options.nix
        ./plugins.nix
    ];

    programs.nixvim = {
        enable = true;
    };
}
