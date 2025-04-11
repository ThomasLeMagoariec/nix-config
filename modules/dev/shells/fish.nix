{ config, pkgs, ... }:

{
    programs.fish = {
        enable = true;
        shellAliases = {
            e = "exit";
        };
    }
}
