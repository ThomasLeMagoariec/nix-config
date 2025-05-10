{ config, pkgs, ... }:

{
    programs.zsh = {
        enable = true;
        autosuggestions.enable = true;
        zsh-autoenv.enable = true;
    };

}
