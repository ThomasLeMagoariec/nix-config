{ inputs, config, pkgs, ... }:

{
    imports =
    [
        ./hardware-configuration.nix
        ./modules/system/locals.nix
        ./modules/system/users.nix
        ./modules/system/services.nix
        ./modules/system/virtualisation.nix
    ];

    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "nixos"; # Define your hostname.
    networking.networkmanager.enable = true; 


    security.rtkit.enable = true; # no clue what this is so won't touch it


    nix.settings = {
        experimental-features = [ "nix-command" "flakes" ];
        substituters = ["https://hyprland.cachix.org"];
        trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
    };

    programs = {
        nix-ld = { enable = true; };
        light = { enable = true; };
        firefox = { enable = true; };
        zsh = { enable = true; };
        gnupg.agent = {
            enable = true;
            enableSSHSupport = true;
        };
        steam = {
            enable = true;
            remotePlay.openFirewall = true;
            dedicatedServer.openFirewall = true;
            localNetworkGameTransfers.openFirewall = true;
        };
    };

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        home-manager
    ];

    # Enable the OpenSSH daemon.
    services.openssh.enable = true;

    system.stateVersion = "24.11"; # Did you read the comment?

}
