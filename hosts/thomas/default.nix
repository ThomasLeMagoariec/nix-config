{ inputs, config, pkgs, lib, ... }@args:

let
    host = "thomas";
    de = "hyprland";
    sh = "";
    vscode = false;
    lfs = true;
in
{
    _module.args = {
        host = host;
        de = de;
        sh = sh;
        vscode = vscode;
    };


    imports =
    [
        ../../configuration.nix
        ../../modules/dev
        ../../modules/graphical/hyprland
    ];

  boot.loader = {
    grub = {
      enable                = true;
      useOSProber           = true;
      copyKernels           = true;
      efiInstallAsRemovable = true;
      efiSupport            = true;
      fsIdentifier          = "label";
      devices               = [ "nodev" ];
      extraEntries = ''
                menuentry "Reboot" {
                    reboot
                }
                menuentry "Poweroff" {
                    halt
                }
      '';
    };
  };

    networking.hostName = "nixos";
    system.stateVersion = "25.05";
}

