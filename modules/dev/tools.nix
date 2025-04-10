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

        # utilities
        unzip
        tree
        wget
        dmenu           # basically no clue of what the following do
        i3lock          # i think they ended up here when trying to do 
        xss-lock        # auth stuff ?
        xorg.xrandr     # too scared to remove them 
        pass            # so they survive another day
        gnupg
        i3status        # why is there so much i3 stuff ???

  ];
}

