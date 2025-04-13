{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        tmux            # essential
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
}

