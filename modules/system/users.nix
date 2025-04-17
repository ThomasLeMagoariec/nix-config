{ config, pkgs, lib, host, ... }:

{

    users.users = lib.mkMerge [
        (lib.mkIf (host == "thomas") {
            thomas = {
                shell = pkgs.zsh;
                isNormalUser = true;
                description = "Thomas";
                extraGroups = [ "networkmanager" "wheel" "docker" "video" ];
                packages = with pkgs; [
                    # use home-manager for this
                ];
            };
        })

        (lib.mkIf (host == "paul") {
            palopil = {
                isNormalUser = true;
                description = "Paul";
                extraGroups = [ "networkmanager" "wheel" "docker" "video" ];
                packages = with pkgs; [
                    # use home-manager for this
                ];
            };
        })
    ];
}
