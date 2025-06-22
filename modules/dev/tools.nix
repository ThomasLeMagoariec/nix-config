{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        ollama          # local chatGPT
        poetry          # python venvs and Prologin
        pre-commit      # Prologin
        nwg-displays    # GUI to configure displays for Hyprland
        caligula        # iso burner (tui)
        wine            # for running many cracked games 
        kitty           # everyones favorite terminal emulator
        gnumake
        hugo
        ansible
    ];

  
    programs.gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
    };

    programs.tmux = {
        enable = true;
        plugins = [ pkgs.tmuxPlugins.rose-pine ];
        extraConfig = ''            
            unbind C-b
            set-option -g prefix C-f
            bind-key C-f send-prefix

            bind q split-window -h
            bind s split-window -v

            unbind '"'
            unbind %

            set-option -g default-shell /home/thomas/.nix-profile/bin/zsh

            bind -n M-Left select-pane -L
            bind -n M-Right select-pane -R
            bind -n M-Up select-pane -U
            bind -n M-Down select-pane -D

            set -g mouse on
        '';
    };
}

