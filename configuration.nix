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
    #boot.loader.systemd-boot.enable = true;
    #boot.loader.efi.canTouchEfiVariables = true;

    # shoud be set in the host/default.nix
    #networking.hostName = "nixos"; # Define your hostname.
    networking.networkmanager.enable = true; 

    hardware.bluetooth.enable = true; # enables support for Bluetooth
    hardware.bluetooth.powerOnBoot = true;

    security.rtkit.enable = true; # no clue what this is so won't touch it


    nix.settings.experimental-features = [ "nix-command" "flakes" ];


    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        home-manager
        strongswan
        openssl
        autoconf
        automake
        libtool
    ];

    # Enable the OpenSSH daemon.
    services.openssh.enable = true;

    system.stateVersion = "25.05"; # Did you read the comment?

    services.strongswan-swanctl.enable = true;

    services.strongswan-swanctl.swanctl = {
        authorities = {
            banquise1.file = "/home/thomas/.secrets/strongswan/cacerts/BanquiseRootCA.cacert.pem";
            banquise2.file = "/home/thomas/.secrets/strongswan/cacerts/BanquiseMachineIssuingCA.cacert.pem";
            banquise3.file = "/home/thomas/.secrets/strongswan/cacerts/BanquiseMachineSubCA.cacert.pem";
            banquise4.file = "/home/thomas/.secrets/strongswan/cacerts/BanquiseUserIssuingCA.cacert.pem";
            banquise5.file = "/home/thomas/.secrets/strongswan/cacerts/BanquiseUserSubCA.cacert.pem";
        };

        connections = {
            banquise = {
                children = {
                    banquise = {
                        remote_ts = [ "10.0.0.0/9" ];
                    };
                };
                local = {
                    banquise.auth = "pubkey";
                    banquise.certs = [ "/home/thomas/.secrets/strongswan/x509/thomas.le-magoariec.pem" ];
                };
                remote = {
                    banquise.auth = "pubkey";
                    banquise.id = "proxy1.la-banquise.fr";
                };
                remote_addrs = [ "89.168.61.117" ];
                vips = [ "0.0.0.0" ];
            };
        };
    };
}
