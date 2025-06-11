{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        virtualbox
        virtualboxExtensionPack
        linuxKernel.packages.linux_6_12.virtualboxModules
    ];

    boot.extraModulePackages = with config.boot.kernelPackages; [
        virtualboxHostModules
    ];

    boot.kernelModules = [ "vboxdrv" "vboxnetflt" "vboxnetadp" ];

    virtualisation.docker.enable = true;
    virtualisation.virtualbox.host.enable = true;
    virtualisation.libvirtd = {
        enable = true;
        qemu = {
            package = pkgs.qemu_kvm;
            runAsRoot = true;
            swtpm.enable = true;
            ovmf = {
                enable = true;
                packages = [(pkgs.OVMF.override {
                    secureBoot = true;
                    tpmSupport = true;
                }).fd];
            };
        };
    };
}
