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
            gc = "git commit -m";
            gac = "git add -A && git commit -m ";
            gaca = "git add -A && git commit -m 'auto'";
            gacp = "git add -A && git commit -m 'auto' && git push";
            gP = "git pull";

            dirc = "~/coding/sh/dirc.sh";

            dotnet7 = "nix-shell ~/coding/nix/config/shells/dotnet7.nix";

            code = "cd ~/coding";
            epita = "cd ~/coding/epita";


            rebuild = "cd ~/coding/nix/config/scripts && ./rebuild.sh thomas";
            clean = "cd ~/coding/nix/config/scripts && ./clean.sh";
            switch-nord = "cd ~/coding/nix/config/scripts && ./rebuild-home-nord.sh &";
            switch-rosepine = "cd ~/coding/nix/config/scripts && ./rebuild-home-rosepine.sh &";
            switch-catppuccin = "cd ~/coding/nix/config/scripts && ./rebuild-home-catppuccin.sh &";

            light = "sudo light";

            e = "exit";
        };

        initContent = ''

            export EDITOR=nvim
            bindkey '^P' up-history
            bindkey '^N' down-history

            eval "$(starship init zsh)"
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
