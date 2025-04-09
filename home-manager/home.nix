{ config, pkgs, ... }:

{
    home.username = "thomas";
    home.homeDirectory = "/home/thomas";

    home.stateVersion = "24.11";

    home.packages = [];

    home.file = {
        ".p10k.zsh".source = ./dotfiles/p10k.zsh;
    };

    home.sessionVariables = {
        EDITOR = "nvim";
    };

    programs = {
        zsh = {
            enable = true;
            enableCompletion = true;
            syntaxHighlighting.enable = true;

            shellAliases = {
                gs = "git status";
                gac = "git add -A && git commit -m ";
                gaca = "git add -A && git commit -m 'auto'";
                gacp = "git add -A && git commit -m 'auto' && git push";
                e = "exit";
            };

            initExtra = ''
                source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
                [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

                export EDITOR=nvim
                bindkey '^P' up-history
                bindkey '^N' down-history
            '';

            plugins = [
                {
                    name = "zsh-autosuggestions";
                    src = pkgs.zsh-autosuggestions;
                }
                {
                    name = "zsh-syntax-highlighting";
                    src = pkgs.zsh-syntax-highlighting;
                }
            ];

            oh-my-zsh = {
                enable = true;
                plugins = [ "thefuck" "z" "sudo"];
            };

        };
    };

    programs.home-manager.enable = true;
}

