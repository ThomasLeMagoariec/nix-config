{
  description = "Dev tools";

  outputs = { nixpkgs, ... }: {
    nixosModules.default = { config, pkgs, ... }: {
      environment.systemPackages = with pkgs; [

        # text editors
        vim
        neovim

        # git stuff
        git
        git-lfs
        lazygit

        # package managers, compilers and languages
        gcc
        clang-tools
        python3
        go
        nodejs
        cargo
        dotnet-sdk
        octave

        # virtualization
        libvirt
        virt-manager
        qemu
        quickemu
        kvmtool
        vagrant
        vagrant-libvirt
        virtualbox

        # random stuff
        gnumake
        tmux
      ];
    };
  };
}

