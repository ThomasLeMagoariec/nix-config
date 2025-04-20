{ config, pkgs, ... }:

{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        syntaxHighlighting.enable = true;

        shellAliases = {
            gs = "git status";
            gp = "git push";
            ga = "git add -A";
            gc = "git cmmit -m";
            gac = "git add -A && git commit -m ";
            gaca = "git add -A && git commit -m 'auto'";
            gacp = "git add -A && git commit -m 'auto' && git push";
            gP = "git pull";

            code = "cd ~/coding";
            epita = "cd ~/coding/epita";

            nvim = "nix run ~/coding/nix/nvim-config/";

            rebuild = "cd ~/coding/nix/flakes/scripts && ./rebuild.sh thomas";
            clean = "cd ~/coding/nix/flakes/scripts && ./clean.sh";

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
            plugins = [ "z" "sudo"];
        };

    };

}
