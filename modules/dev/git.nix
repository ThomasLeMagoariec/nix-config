{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        git         # do I really need to explain ?
        git-lfs     # big git
        lazygit     # when i can't be arsed to google
    ];
}

