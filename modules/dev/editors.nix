{ config, lib, pkgs, vscode, ... }:

{
    environment.systemPackages = with pkgs; [
        neovim
        vim
    ] ++ lib.optional (vscode) pkgs.vscode;
}

