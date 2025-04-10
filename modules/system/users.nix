{ config, pkgs, ... }:

{
    users.defaultUserShell=pkgs.zsh;
    users.users.thomas = {
        isNormalUser = true;
        description = "Thomas";
        extraGroups = [ "networkmanager" "wheel" "docker" "video" ];
        packages = with pkgs; [
            #  use home-manager for this
        ];
    };
}
