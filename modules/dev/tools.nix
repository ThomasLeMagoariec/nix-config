{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neofetch        # flexing rights
    tmux            # essential
    ollama          # local chatGPT
    poetry          # python venvs and Prologin
    pre-commit      # Prologin
    nwg-displays    # GUI to configure displays for Hyprland
    caligula        # iso burner (tui)
  ];
}

