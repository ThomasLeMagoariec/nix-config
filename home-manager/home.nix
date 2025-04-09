{ config, pkgs, ... }:

{
    home.username = "thomas";
    home.homeDirectory = "/home/thomas";

    home.stateVersion = "24.11"; # Please read the comment before changing.

    home.packages = [
    ];

    home.file = {
    };

    home.sessionVariables = {
        EDITOR = "nvim";
    };


    programs.zsh = {
        enable = true;
        enableCompletion = true;
        syntaxHighlighting.enable = true;
        autosuggestions.enable = true;

        shellAliases = {
            ll = "ls -lah";
            gs = "git status";
        };

        initExtra = ''
            export EDITOR=nvim
            bindkey '^P' up-history
            bindkey '^N' down-history
        '';
    };

    programs.home-manager.enable = true;
}
