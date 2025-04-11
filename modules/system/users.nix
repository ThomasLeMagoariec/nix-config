{ config, pkgs, host, ... }:

{
    users.defaultUserShell=pkgs.zsh;

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

        (lib.mkif (host == "paul") {
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
