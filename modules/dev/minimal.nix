{ config, lib, pkgs, hostRole, ... }:

{
    options.dev.minimal.enable = lib.mkEnableOption "Enable minimal dev environment";

    config = lib.mkIf config.dev.minimal.enable {
        environment.systemPackages = with pkgs; [
            neovim
            git
            tmux
            kitty
            python3                 # python 3.12.9
            python3Packages.pip     # pip (the worlds worst package manager)
            nodejs                  # useful for anything and everything
            gcc11                   # C/C++

            pyright                 # python LSP
            nix-ld
            firefox
        ] ++ lib.optionals (hostRole == "paul") [
            helix
        ];
    };
}

