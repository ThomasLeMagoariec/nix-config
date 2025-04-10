{ config, pkgs, ... }:

{
    home.username = "thomas";
    home.homeDirectory = "/home/thomas";

    home.stateVersion = "24.11";

    home.packages = with pkgs; [
        wofi
        zsh
    ];

    home.file = {
        ".p10k.zsh".source = ./dotfiles/p10k.zsh;
        ".config/wofi/config".source = ./dotfiles/wofi.config;

        # hyprland config
        ".config/hypr/hyprland.conf".source = ./dotfiles/hypr/hyprland.conf;
        ".config/hypr/hypridle.conf".source = ./dotfiles/hypr/hypridle.conf;
        ".config/hypr/hyprlock.conf".source = ./dotfiles/hypr/hyprlock.conf;
        ".config/hypr/hyprpaper.conf".source = ./dotfiles/hypr/hyprpaper.conf;

        # bg and stuff
        ".config/hypr/MraeZ5D.png".source = ./dotfiles/hypr/MraeZ5D.png;
        ".config/hypr/clouds.JPG".source = ./dotfiles/hypr/clouds.JPG;
        ".config/hypr/rose_pine_contourline.png".source = ./dotfiles/hypr/rose_pine_contourline.png;
        ".config/hypr/smth_beautiful.jpg".source = ./dotfiles/hypr/smth_beautiful_.jpg;
        ".config/hypr/wallpaper.png".source = ./dotfiles/hypr/wallpaper.png;

        # waybar config
        ".config/waybar/config.jsonc".source = ./dotfiles/waybar/config.jsonc;
        ".config/waybar/network_menu.xml".source = ./dotfiles/waybar/network_menu.xml;
        ".config/waybar/power_menu.xml".source = ./dotfiles/waybar/power_menu.xml;
        ".config/waybar/style.css".source = ./dotfiles/waybar/style.css;

    };

    home.sessionVariables = {
        EDITOR = "nvim";
    };

    programs = {
        wofi.enable = true;
        
        zsh = {
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
                
                code = "cd ~/coding";
                epita = "cd ~/coding/epita";

                nvim = "nix run ~/coding/nix/nvim-config/";

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

    };

    programs.home-manager.enable = true;
}

