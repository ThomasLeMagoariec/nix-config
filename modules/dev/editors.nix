{ config, lib, pkgs, hostRole, ... }:

{
    environment.systemPackages = with pkgs; [
        neovim
        vim
    ] ++ lib.optionals (hostRole == "paul") [
        helix
    ];
}

