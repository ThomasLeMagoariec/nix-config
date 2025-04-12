{ config, pkgs, lib, host, ... }:

{

    users.users = lib.mkMerge [
        (lib.mkIf (host == "thomas") {
            thomas = {
                isNormalUser = true;
                description = "Thomas";
                extraGroups = [ "networkmanager" "wheel" "docker" "video" ];
                packages = with pkgs; [
                    # use home-manager for this
                ];
            };
        })

        (lib.mkIf (host == "paul") {
            paul = {
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
