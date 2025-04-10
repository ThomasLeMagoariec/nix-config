{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        neovim
        vim
    ] ++ lib.optionals (hostRole == "paul") [
        helix
    ];
}

