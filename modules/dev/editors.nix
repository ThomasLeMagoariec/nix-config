{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        neovim
        vim
        vscode
    ];
}

