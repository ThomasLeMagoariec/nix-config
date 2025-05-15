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
        unityhub        # worst engine ever, need it for school work
        gnumake
    ];

  
    programs.gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
    };

    programs.tmux = {
        enable = true;
        plugins = [ pkgs.tmuxPlugins.rose-pine ];
        extraConfig = ''            
            bind -n M-Left select-pane -L
            bind -n M-Right select-pane -R
            bind -n M-Up select-pane -U
            bind -n M-Down select-pane -D

            set -g mouse on
        '';
    };
}

